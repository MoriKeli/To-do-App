import 'package:flutter/material.dart';
import 'package:new_app/utils/todo_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('To-do App'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {

            },
          ),
          ToDoTile(
            taskName: "Attend class",
            taskCompleted: false,
            onChanged: (p0) {
              
            },
          ),
        ],
      )
    );
  }
}