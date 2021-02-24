import 'package:flutter/material.dart';

Widget popupMane (IconData icon, String title){
  return  Row(
    children: <Widget> [
      Icon(
          icon,
          color: Colors.grey.shade700
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        title,
        style: TextStyle(
            color: Colors.grey.shade700
        ),
      ),

    ],


  );
}