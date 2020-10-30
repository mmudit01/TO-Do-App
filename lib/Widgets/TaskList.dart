import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/modals/TaskData.dart';
import '../modals/Task.dart';

import 'TaskTIle.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              callback: (checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressedCallback: () {
                taskData.tasks[index].isDone
                    ? taskData.deleteTask(taskData.tasks[index])
                    : null;
              },
            );
          },
        );
      },
    );
  }
}
