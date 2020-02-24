import 'package:flutter/material.dart';
import '../components/add_task.dart';
import '../components/tasks_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => AddTask(),
          isScrollControlled: false,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Theme.of(context).accentColor,
                    size: 45,
                  ),
                  radius: 45,
                ),
                SizedBox(height: 15),
                Text('To Do', style: Theme.of(context).textTheme.display2),
                SizedBox(height: 15),
                Text('12 Tasks', style: Theme.of(context).textTheme.title),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
