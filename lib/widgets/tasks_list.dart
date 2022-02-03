import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_list_model.dart';
import 'tasks_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Instead of writing Provider.of<TaskListModel>(context) everywhere
    // to access the task list, we can simply wrap the Listview.builder widget
    // with Consumer widget and call the taskList
    // Now, the entire Consumer widget is listening to changes to the taskList
    return Consumer<TaskListModel>(builder: (context, taskList, child) {
      return ListView.builder(
        itemCount: taskList.getNumTasks(),
        itemBuilder: (BuildContext context, int index) {
          Task task = taskList.getTasks()[index];
          return Container(
            child: TaskTile(
              todo: task.task,
              checkboxValue: task.isChecked,
              toggleCheckbox: (checkboxState) {
                taskList.toggleCheckbox(task);
              },
              deleteTask: () {
                taskList.deleteTask(task);
              },
            ),
          );
        },
      );
    });
  }
}
