import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.taskTitle, required this.isChecked});
  @override
  final bool isChecked;
  final String taskTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: isChecked, onChanged: (newValue) {}));
  }
}
// (bool? checkBoxState) {
// if (checkBoxState != null) {
// setState(() {
// isChecked = checkBoxState;
// });
// }
// },
