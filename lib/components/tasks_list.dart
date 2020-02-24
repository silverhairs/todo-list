import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist/models/task_data.dart';
import '../models/task.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.tasksCount(),
        itemBuilder: (context, index) {
          Task task = taskData.tasks[index];
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.red,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.delete, color: Colors.red,),
              ),
            ),
            onDismissed: (direction) {
              taskData.removeTask(task);
            },
            direction: DismissDirection.endToStart,
            child: TaskTile(
              taskTitle: task.title,
              isChecked: task.isDone,
              checkboxHandler: (currentState) => taskData.checkboxHandler(task),
            ),
          );
        },
      ),
    );
  }
}
