import 'package:flutter/material.dart';
import 'package:new_app/utils/dialogbox.dart';
import 'package:new_app/utils/todo_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // text controller
  final _controller = TextEditingController();

  List toDolist = [
    ["Make tutorial", false],
    ["Do exercise", false],
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      toDolist[index][1] = !toDolist[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDolist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      }
    );
  }

  void deleteTask(int index) {
    setState(() {
      toDolist.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('To-do App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDolist[index][0], 
            taskCompleted: toDolist[index][1], 
            onChanged: (value) => checkboxChanged(value, index),
            deleteFunction: (task) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
            Icons.add
        )
          
      ),
    );
  }
}