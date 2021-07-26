import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addNewTaskTitle;
  AddTaskScreen(this.addNewTaskTitle);

  @override
  Widget build(BuildContext context) {
    String? newTask;
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTaskTitle) {
                  newTask = newTaskTitle;
                },
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    addNewTaskTitle(newTask);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
