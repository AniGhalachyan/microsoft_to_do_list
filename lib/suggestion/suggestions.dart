import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('lib/img/6.jpg'),
            ),
            Text(
              "Add a task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700
              ),
            ),
            Text(
              "You don't have any suggestions yet",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],

        ),
      )

    );
  }
}
