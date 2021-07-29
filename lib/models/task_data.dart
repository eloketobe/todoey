import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy bread'),
    Task(name: 'sleep'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTile) {
    _tasks.add(Task(name: newTaskTile));
    notifyListeners();
  }

  void updateDoneState({required bool newState, required int index}) {
    _tasks[index].isDone = newState;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
