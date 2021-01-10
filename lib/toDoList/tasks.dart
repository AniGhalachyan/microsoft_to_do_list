import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/addTasks/new_tasks.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

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
        backgroundColor: Color.fromRGBO(94,113,192, 1),
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
                  color: Color.fromRGBO(230,233,229,1),
                  size: 30,
                ),
              ),
            ),

            Spacer(),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(230,233,229,1),
                ),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    child: Row(
                      children: <Widget> [
                        Icon(
                            Icons.sort,
                            color: Colors.grey.shade700
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sort by ",
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
                  "Tasks",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(230,233,229,1)
                  ),
                ),
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
                child: Image.asset('lib/img/1.jpg'),
              )
            ],

          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text("Tasks show up here if they aren't part of any lists you've created",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(230,233,229,1)
                  )
              )
          )
        ],

      ),

    );
  }
  Widget _button(){
    return FloatingActionButton(
        backgroundColor: Color.fromRGBO(230,233,229,1),
      onPressed: (){
        _startAddNewTasks(context);
      },
      child: Icon(
        Icons.add,
        color: Color.fromRGBO(94,113,192, 1),
      ),

    );
  }
}
