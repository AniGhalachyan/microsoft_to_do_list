import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/toDoList/assigned_to_you.dart';
import 'package:microsoft_to_do_list/toDoList/important.dart';
import 'package:microsoft_to_do_list/toDoList/my_day.dart';
import 'package:microsoft_to_do_list/toDoList/planned.dart';
import 'package:microsoft_to_do_list/toDoList/tasks.dart';

import 'package:microsoft_to_do_list/to_do_list.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      home: ToDoList(),
     routes: {
      AssignedToYou.routeName: (ctx) => AssignedToYou(),
       MyDay.routeName: (ctx) => MyDay(),
       Important.routeName: (ctx) => Important(),
       Planned.routeName: (ctx) => Planned(),
       Tasks.routeName:(ctx)=> Tasks(),
    }
    );
  }
}


