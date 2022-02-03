import 'dart:collection';

import 'package:flutter/material.dart';

import 'task.dart';

class TaskListModel extends ChangeNotifier {
  List<Task> _tasks = [];

  List<String> getTaskNames() {
    List<String> taskNames = [];
    for (Task t in _tasks) {
      taskNames.add(t.task);
    }
    return taskNames;
  }

  int getNumTasks() {
    return _tasks.length;
  }

  // increase safety by not allowing user of this class to
  // modify the _tasks object directly
  UnmodifiableListView<Task> getTasks() {
    return UnmodifiableListView(_tasks);
  }

  void addTasks(String task) {
    _tasks.add(Task(task, false));
    notifyListeners();
  }

  void toggleCheckbox(Task t) {
    int index = _tasks.indexOf(t);
    _tasks[index].toggleCheckbox();
    notifyListeners();
  }

  void deleteTask(Task t) {
    _tasks.remove(t);
    notifyListeners();
    print(_tasks);
  }
}
