import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_list_model.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskListModel(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
