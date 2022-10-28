import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0),
      child: Slidable(
        endActionPane: ActionPane(
          action: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgrooundColor: Colors.red[400],
              borderRadius: BorderRadius.circular(12.0),
            )
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Row(
            children: [
              // checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
      
              Text(
                taskName,
                style: TextStyle(
                  fontSize: 20.0,
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
      
                ),
                ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            
          ),
        ),
      ),
    );
  }
}