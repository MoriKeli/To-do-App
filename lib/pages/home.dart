import 'package:flutter/material.dart';
import 'package:new_app/utils/todo_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List toDolist = [
    ["Make tutorial", false],
    ["Do exercise", false],
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      toDolist[index][1] = !toDolist[index][1];
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
          );
        },
      )
      
    );
  }
}