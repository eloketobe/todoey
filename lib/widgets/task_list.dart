import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (bool? checkBoxState) {
            if (checkBoxState != null) {
              setState(() {
                widget.tasks[index].isDone = checkBoxState;
              });
            }
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
