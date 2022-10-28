import 'package:flutter/material.dart';
import 'package:new_app/utils/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Add a new task',
              ),
            ), // get user input

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                CustomButton(text: "Save", onPressed: onSave),
                SizedBox(width: 5.0),
                // cancel button
                CustomButton(text: "Cancel", onPressed: onCancel),

              ],
            )

          ],
        ),

      ),
    );
  }
}