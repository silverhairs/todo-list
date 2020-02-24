import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final Function checkboxHandler;
  final bool isChecked;

  TaskTile(
      {@required this.taskTitle,
      @required this.isChecked,
      @required this.checkboxHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          trailing: Checkbox(
            activeColor: Theme.of(context).accentColor,
            value: isChecked,
            onChanged: checkboxHandler,
          ),
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
        ),
        Divider(
          color: Colors.blueGrey[50],
          thickness: 1,
          endIndent: 15,
          indent: 15,
        )
      ],
    );
  }
}
