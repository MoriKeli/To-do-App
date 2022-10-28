import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        height: 150,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Add a new task',
              ),
            ), // get user input

            Row(
              
            )

          ],
        ),

      ),
    );
  }
}