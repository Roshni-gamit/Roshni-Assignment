import 'package:flutter/material.dart';
import 'package:practical/test-assignment/local/db_helper.dart';
import 'package:practical/test-assignment/model/task.dart';


class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    tasks = await _databaseHelper.getTasks();
    setState(() {});
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Navigate to add task screen
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
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
            onTap: () {
              // Show context menu to complete task
            },
          );
        },
      ),
    );
  }
}