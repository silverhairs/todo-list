import 'package:flutter/foundation.dart';
import 'package:todoist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buying eggs'),
    Task(title: 'Going to the barber')
  ];

  List<Task> get tasks => _tasks;
  int tasksCount() => _tasks.length;

  void addTask(String title) {
    Task task = Task(title: title);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void checkboxHandler(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }
}
