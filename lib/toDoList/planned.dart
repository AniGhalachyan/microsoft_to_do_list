import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/addTasks/new_tasks.dart';
class Planned extends StatefulWidget {



  // void startAddNewPlanned(){
  //   showModalBottomSheet();
  // }
  @override
  _PlannedState createState() => _PlannedState();
}

class _PlannedState extends State<Planned> {
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
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(23,111,107,1),
                  size: 30,
                ),
                onPressed: () {
                }
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 15),
                // height: 55,
                // width: 105,
                // decoration: BoxDecoration(
                //   color: Color.fromRGBO(203,230,229, 1),
                //   borderRadius: BorderRadius.circular(5),
                // ),
                child: Icon(
                  Icons.dehaze,
                    color: Color.fromRGBO(23,111,107,1)
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
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
