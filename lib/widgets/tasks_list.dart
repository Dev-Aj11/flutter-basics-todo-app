import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import '../models/Task.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskItems;

  TaskList(this.taskItems);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    print('rebuilding');
    return ListView.builder(
      itemCount: widget.taskItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            child: TaskTile(
          todo: widget.taskItems[index].task,
          checkboxValue: widget.taskItems[index].isChecked,
          toggleCheckbox: (checkboxState) {
            setState(() {
              widget.taskItems[index].toggleCheckbox(checkboxState);
            });
          },
        ));
      },
    );
  }
}
