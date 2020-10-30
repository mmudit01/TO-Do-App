import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.callback,
      this.longPressedCallback});
  final String taskTitle;
  final bool isChecked;
  final Function callback;
  final Function longPressedCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressedCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: !isChecked ? null : TextDecoration.lineThrough,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callback,
      ),
    );
  }
}
