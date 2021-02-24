
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../addTasks/new_tasks.dart';
import '../widget/popup_menu.dart';



class Planned extends StatefulWidget {
    static const routeName='/planned';


  @override
  _PlannedState createState() => _PlannedState();
}

class _PlannedState extends State<Planned> {
  DateTime now = DateTime.now();
  void _startAddNewTasks(BuildContext ctx) {
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
                    child: popupMane(Icons.group, "Group by")
                  ),
                  PopupMenuItem(
                    child: popupMane(Icons.add_to_home_screen, "Add shortcut to homescreen ")
                  ),
                  PopupMenuItem(
                    child: popupMane(Icons.crop_3_2, "Change theme")
                  ),
                  PopupMenuItem(
                    child: popupMane(Icons.check_circle_outline, "Hide completed tasks")
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
                            child: popupMane( Icons.assignment_return_outlined, "Overdue")
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget> [
                               popupMane(Icons.calendar_today, "Today"),
                                Text(
                                  DateFormat().add_E().format(now),
                                  style: TextStyle(
                                      color: Colors.grey.shade700
                                  ),
                                ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.calendar_today_outlined, "Tomorrow (Sum)")
                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.calendar_today, "This week (9-15 Jun)")
                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.assignment_returned_outlined, "Later")
                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.date_range_outlined, "All planned")
                          ),
                        ]
                    )
                  ],
                ),
              ),
              Container(
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
