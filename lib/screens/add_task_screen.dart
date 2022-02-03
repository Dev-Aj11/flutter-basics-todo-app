import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_list_model.dart';

class AddTaskScreen extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            enabled: true,
            controller: myController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // update Model which will notify all listeners to update
              Provider.of<TaskListModel>(context, listen: false)
                  .addTasks(myController.text);

              // dismiss modal
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
