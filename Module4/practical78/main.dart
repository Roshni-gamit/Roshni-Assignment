import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name List',
      home: NameListScreen(),
    );
  }
}

class NameListScreen extends StatefulWidget {
  @override
  _NameListScreenState createState() => _NameListScreenState();
}

class _NameListScreenState extends State<NameListScreen> {
  final List<String> names = [];
  final TextEditingController nameController = TextEditingController();

  void _showNameDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(name),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  names.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  void _editName(int index) {
    nameController.text = names[index];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Name'),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: 'Enter name here'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  names[index] = nameController.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _addName() {
    if (nameController.text.isNotEmpty) {
      setState(() {
        names.add(nameController.text);
        nameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Name List')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addName,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                  onTap: () {
                    _showNameDialog(names[index]);
                  },
                  onLongPress: () {
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(100, 100, 100, 100),
                      items: [
                        PopupMenuItem(
                          child: Text('Edit Item'),
                          value: 'edit',
                        ),
                        PopupMenuItem(
                          child: Text('Delete Item'),
                          value: 'delete',
                        ),
                        PopupMenuItem(
                          child: Text('Exit'),
                          value: 'exit',
                        ),
                      ],
                    ).then((value) {
                      if (value == 'edit') {
                        _editName(index);
                      } else if (value == 'delete') {
                        _showDeleteConfirmDialog(index);
                      } else if (value == 'exit') {
                        Navigator.of(context).pop();
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}