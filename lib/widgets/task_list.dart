import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (bool? checkBoxState) {
              // if (checkBoxState != null) {
              //   setState(() {
              //     Provider.of<TaskData>(context).tasks[index].isDone =
              //         checkBoxState;
              //   }
              //   );
              // }
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
