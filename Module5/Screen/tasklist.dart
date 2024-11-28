import 'package:flutter/material.dart';
import 'package:practical/test-assignment/Screen/task-screen.dart';
import 'package:practical/test-assignment/local/db_helper.dart';
import 'package:practical/test-assignment/model/task.dart';
// Import your add task screen

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [];
  List<Task> filteredTasks = [];
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    tasks = await _databaseHelper.getTasks();
    _filterTasks();
  }

  void _filterTasks() {
    setState(() {
      filteredTasks = tasks
          .where((task) => task.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  Color _getPriorityColor(String priority) {
    switch (priority) {
      case 'High':
        return Colors.red;
      case 'Average':
        return Colors.blue;
      case 'Low':
        return Colors.green;
      default:
        return Colors.black;
    }
  }

  Color _getDueColor(DateTime dateTime) {
    return dateTime.isBefore(DateTime.now()) ? Colors.blue : Colors.black;
  }

  Future<void> _showTaskOptions(Task task) async {
    final action = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 0.0),
      items: [
        PopupMenuItem(
          value: 'complete',
          child: Text(task.isCompleted ? 'Undo' : 'Complete'),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete'),
        ),
      ],
    );

    if (action == 'complete') {
      setState(() {
        task.isCompleted = !task.isCompleted;
        _databaseHelper.updateTask(task); // Update the task in the database
      });
    } else if (action == 'delete') {
      setState(() {
        tasks.remove(task);
        filteredTasks.remove(task);
        _databaseHelper.deleteTask(task.id!); // Delete the task from the database
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddTaskScreen()), // Navigate to add task screen
              ).then((_) => _loadTasks()); // Reload tasks after adding
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                  _filterTasks();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredTasks.length,
              itemBuilder: (context, index) {
                final task = filteredTasks[index];
                return ListTile(
                  title: Text(
                    task.name,
                    style: TextStyle(
                      color: _getPriorityColor(task.priority),
                      decoration: task.isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  subtitle: Text(task.description),
                  trailing: Text(
                    '${task.dateTime.toLocal()}'.split(' ')[0],
                    style: TextStyle(color: _getDueColor(task.dateTime)),
                  ),
                  onLongPress: () => _showTaskOptions(task), // Show context menu on long press
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}