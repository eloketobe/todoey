import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a title task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (bool? checkBoxState) {
          if (checkBoxState != null) {
            setState(() {
              isChecked = checkBoxState;
            });
          }
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?)? toggleCheckBoxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState, onChanged: toggleCheckBoxState);
  }
}

// (bool checkBoxState) {
// setState(() {
// isChecked = checkBoxState;
// });
// },
