import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

String taskTitle;

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Task title'),
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Add to the list',
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.white),
                ),
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(taskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
