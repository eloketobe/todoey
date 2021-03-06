import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkBoxCallBack;
  final Function() longPressCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          taskTitle.toString(),
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: isChecked, onChanged: checkBoxCallBack));
  }
}
// (bool? checkBoxState) {
// if (checkBoxState != null) {
// setState(() {
// isChecked = checkBoxState;
// });
// }
// },
