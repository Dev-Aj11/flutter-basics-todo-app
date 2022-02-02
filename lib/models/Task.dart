class Task {
  String task;
  bool isChecked;

  Task(this.task, this.isChecked);

  void toggleCheckbox(newValue) {
    this.isChecked = newValue;
    print(this.isChecked);
  }
}
