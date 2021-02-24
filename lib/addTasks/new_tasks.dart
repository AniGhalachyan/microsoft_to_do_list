import 'package:flutter/material.dart';

class NewTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisSize: MainAxisSize.max,
       children: <Widget> [
          Row(
           children: [
             Container(
               padding: EdgeInsets.all(10),
               child: Icon(
                 Icons.fiber_manual_record_outlined,
                 size: 40,
                 color: Colors.grey,
               ),

             ),
             Expanded(
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                 child: TextField(
                   style: TextStyle(
                     fontSize: 25,
                   ),
                   decoration: InputDecoration(
                       border: InputBorder.none,
                       suffixIcon: Container(
                         padding: EdgeInsets.all(10),
                         child: Icon(
                           Icons.arrow_upward,
                           size: 30,
                         ),
                       ),
                       hintText: "Add a tasks",
                     hintStyle: TextStyle(
                       fontSize: 18
                     )
                   ),
                 ),
               ),
             ),

           ],
         ),
         // SizedBox(
         //   height: 2,
         // ),

         Row(

           children:<Widget> [
            Container(
                 padding: EdgeInsets.only(left: 15),
                 child: Icon(
                   Icons.calendar_today_outlined,
                   color: Colors.grey.shade800,
                 ),
               ),
             Container(
               padding: EdgeInsets.only(left: 8),
               child:Text(
                 "Set due date",
                 style: TextStyle(
                     color: Colors.grey.shade800,
                     fontSize: 15
                 ),
               ),
             ),

             Spacer(),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 5),
               child: Icon(
                 Icons.notifications_none,
                 color: Colors.grey.shade800,
               ),

             ),
             Text(
                 "Set due date",
               style: TextStyle(
                   color: Colors.grey.shade800,
                   fontSize: 15
               ),
             ),
             Spacer(),
             Container(
               padding: EdgeInsets.only(right: 17),
               child: Icon(
                   Icons.repeat,
                 color: Colors.grey.shade800,
               ),
             ),
             Container(
               padding: EdgeInsets.only(right: 10),
               child:Text(
                 "Repeat",
                 style: TextStyle(
                     color: Colors.grey.shade800,
                     fontSize: 15
                 ),
               ),
             ),
           ],

         ),
       ],
     )

    );
  }
}
