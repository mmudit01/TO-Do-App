import 'package:flutter/cupertino.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addNewTask(String taskTitle) {
    print(taskTitle);
    final task = Task(name: taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
