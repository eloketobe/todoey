import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy bread'),
    Task(name: 'sleep'),
    Task(name: 'buy bread'),
    Task(name: 'sleep'),
    Task(name: 'buy bread'),
    Task(name: 'sleep'),
    Task(name: 'buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
