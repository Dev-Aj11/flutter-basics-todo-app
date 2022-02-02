import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String todo;
  final bool checkboxValue;
  final dynamic toggleCheckbox;

  TaskTile({
    required this.todo,
    required this.checkboxValue,
    required this.toggleCheckbox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo,
        style: TextStyle(
            decoration: checkboxValue ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: this.checkboxValue,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
