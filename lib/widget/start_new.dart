import 'package:flutter/material.dart';
import '../addTasks/new_tasks.dart';


void startAddNewTasks(BuildContext ctx) {
  showModalBottomSheet(
    context: ctx,
    builder: (_) {
      return GestureDetector(
        onTap: () {},
        child: NewTasks(),
        behavior: HitTestBehavior.opaque,
      );
    },
  );
}