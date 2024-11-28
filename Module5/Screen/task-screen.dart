import 'package:flutter/material.dart';
import 'package:practical/test-assignment/local/db_helper.dart';
import 'package:practical/test-assignment/model/task.dart';



class AddTaskScreen extends StatefulWidget {
  final Task? task;

  AddTaskScreen({this.task});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  String _name = '';
  String _description = '';
  DateTime _dateTime = DateTime.now();
  String _priority = 'Low';

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      _name = widget.task!.name;
      _description = widget.task!.description;
      _dateTime = widget.task!.dateTime;
      _priority = widget.task!.priority;
    }
  }

  Future<void> _saveTask() async {
    if (_formKey.currentState!.validate()) {
      final task = Task(
        name: _name,
        description: _description,
        dateTime: _dateTime,
        priority: _priority,
      );
      if (widget.task == null) {
        await _databaseHelper.insertTask(task);
      } else {
        task.id = widget.task!.id;
        await _databaseHelper.updateTask(task);
      }
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.task == null ? 'Add Task' : 'Edit Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Task Name'),
                initialValue: _name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter task name';
                  }
                  return null;
                },
                onChanged: (value) {
                  _name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                initialValue: _description,
                onChanged: (value) {
                  _description = value;
                },
              ),
              // Date and Time Picker can be added here
              DropdownButton<String>(
                value: _priority,
                onChanged: (String? newValue) {
                  setState(() {
                    _priority = newValue!;
                  });
                },
                items: <String>['High', 'Average', 'Low']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: _saveTask,
                child: Text('Save Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}