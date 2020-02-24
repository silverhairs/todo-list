import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoist/models/task_data.dart';

import 'screens/home_screen.dart';

void main() => runApp(TodoistApp());

class TodoistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.blueGrey[900],
          textTheme: TextTheme(
            title: GoogleFonts.sourceCodePro(
                textStyle: TextStyle(color: Colors.white)),
            display2: GoogleFonts.sourceCodePro(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            display1: GoogleFonts.sourceCodePro(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
