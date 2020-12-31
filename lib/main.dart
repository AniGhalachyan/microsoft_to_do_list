import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/to_do_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
      title: 'Flutter Demo',
      routes: {
      "/":(context)=>ToDoList(),
    }


    );
  }
}


