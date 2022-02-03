import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String todo;
  final bool checkboxValue;
  final dynamic toggleCheckbox;
  final Function deleteTask;

  TaskTile({
    required this.todo,
    required this.checkboxValue,
    required this.toggleCheckbox,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        this.deleteTask();
      },
      child: ListTile(
        title: Text(
          todo,
          style: TextStyle(
              decoration: checkboxValue ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: this.checkboxValue,
          onChanged: toggleCheckbox,
        ),
      ),
    );
  }
}
