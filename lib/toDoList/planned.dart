import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/addTasks/new_tasks.dart';
import 'package:intl/intl.dart';



class Planned extends StatefulWidget {



  @override
  _PlannedState createState() => _PlannedState();
}

class _PlannedState extends State<Planned> {
  DateTime now = DateTime.now();



  void _startAddNewTasks(BuildContext ctx) {
    showCupertinoModalPopup(
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(212,241,239, 1),
        appBar: _appBar(),
        body: _body(),
        floatingActionButton: _button(),
      ),
    );
  }

  Widget _appBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        height: 50,
        child: Row(
          children: <Widget> [
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child:Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(23,111,107,1),
                  size: 30,
                ),
              ),
            ),

            Spacer(),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(23,111,107,1),
                ),

                itemBuilder: (context)=>[
                  PopupMenuItem(
                    child: Row(
                      children: <Widget> [
                        Icon(
                          Icons.group,
                            color: Colors.grey.shade700
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            "Group by ",
                          style: TextStyle(
                              color: Colors.grey.shade700
                          ),
                        ),

                      ],
                    ),

                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget> [
                        Icon(
                          Icons.add_to_home_screen_sharp,
                            color: Colors.grey.shade700
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            "Add shortcut to home screen",
                          style: TextStyle(
                              color: Colors.grey.shade700
                          ),
                        ),

                      ],
                    ),

                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget> [
                        Icon(
                          Icons.crop_3_2,
                            color: Colors.grey.shade700
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            "Change theme",
                          style: TextStyle(
                              color: Colors.grey.shade700
                          ),
                        ),

                      ],
                    ),

                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget> [
                        Icon(
                          Icons.check_circle_outline,
                            color: Colors.grey.shade700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            "Hide completed tasks",
                          style: TextStyle(
                            color: Colors.grey.shade700
                          ),
                        ),

                      ],
                    ),

                  ),


                ]
            )
          ],
        ),
      ),
    );
  }

  Widget _body(){
    return Center(
      child: Column(
        children:<Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Planned",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(23,111,107,1)
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget> [
              Container(

               child: Column(

                  children:<Widget> [
                    PopupMenuButton(
                      icon: Icon(
                        Icons.dehaze,
                          color: Color.fromRGBO(23,111,107,1)
                      ),
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.assignment_return_outlined,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "Overdue",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.today,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "Today ",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),
                                Text(
                                  DateFormat().add_EEEE().format(now),
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.calendar_today_outlined,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "Tomorrow (Sun)",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.calendar_today,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "This week (9-15 Jan)",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),

                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.assignment_returned_outlined,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "Later",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.date_range_outlined,
                                    color: Colors.grey.shade700
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "All planned",
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ]
                    )
                  ],
                ),
              ),
              Container(
                  // padding: EdgeInsets.only(left: 15, bottom: 15),
                  // color: Color.fromRGBO(202,231,229, 1),
                  child: Text(
                    "Overdue",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(23,111,107,1)
                    ),
                  )
              ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [

              Container(
                height: 300,
                width: 300,
                child: Image.asset('lib/img/4.jpg'),
              )
            ],

          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text("Tasks with due dates or reminders show up here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(23,111,107,1)
                  )
              )
          )
        ],

      ),

    );
  }

  Widget _button(){
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(23,111,107,1),
        onPressed: (){
        _startAddNewTasks(context);
        },
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),

    );
  }
}
