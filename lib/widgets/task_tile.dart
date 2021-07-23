import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a title task'),
      trailing: Checkbox(
        value: true,
        onChanged: (newValue) {},
      ),
    );
  }
}
