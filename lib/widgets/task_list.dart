import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            longPressCallBack: () {
              taskData.deleteTask(task);
            },
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (bool? checkBoxState) {
              if (checkBoxState != null) {
                Provider.of<TaskData>(context, listen: false)
                    .updateDoneState(newState: checkBoxState, index: index);
              }
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
