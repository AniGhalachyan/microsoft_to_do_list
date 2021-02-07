import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/personal/personal_page.dart';

import 'package:microsoft_to_do_list/search/search.dart';
import 'package:microsoft_to_do_list/toDoList/assigned_to_you.dart';
import 'package:microsoft_to_do_list/toDoList/important.dart';
import 'package:microsoft_to_do_list/toDoList/my_day.dart';
import 'package:microsoft_to_do_list/toDoList/planned.dart';
import 'package:microsoft_to_do_list/toDoList/tasks.dart';

class ToDoList extends StatefulWidget {

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  Widget _buildToDoList (String title, IconData icon, Color color){
    return Row(
           children: <Widget> [
                Container(
                 padding: EdgeInsets.all(10),
                   child: Icon(
                    icon,
                     color: color,
                     ),
                  ),
                    Text(
                       title,
                         style: TextStyle(
                         fontSize: 20,
                          color: Colors.black
                       ),
                     )
                 ],
               );
  }
  List<String> avatarUrl=[
    "https://html5css.ru/css/img_lights.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _appBar(),
          body: _body(),
          bottomNavigationBar: _bottomNavigationBar(),
        )
    );

  }
Widget _appBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.only(top: 5),
        child: Row(
          children: <Widget> [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(avatarUrl[0]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return PersonalPage();
                    }
                ),
                );
              },
             child: Container(
               width: 280,
                // color: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Poghos Poghosyan ˇ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        "poghospoghosyan@gmail.com",
                        style: TextStyle(
                          color:  Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return SearchPage();
                        }
                        )
                    );
                  },
                  child: Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                    Icons.search,
                      color: Color.fromRGBO(81, 81, 189, 1),
                      size: 30,
                 ),
                ),
               )
          ],
        ),
      ),
    );
}

 Widget _body(){
    return SingleChildScrollView(
      child:  Padding(
        padding: EdgeInsets.all(8),
        child: Column(
        children: <Widget>[
          Row(
            children:<Widget> [
              Container(
                width: 390,
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return MyDay();
                        }
                    )
                    );
                  },
                    child: _buildToDoList( "My day", Icons.wb_sunny_outlined, Colors.black54)
                )

              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                  width: 390,
                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context){
                              return Important();
                            }
                        )
                        );
                      },
                      child: _buildToDoList("Important", Icons.star_border, Colors.red)
                  )
              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                  width: 390,
                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context){
                              return Planned();
                            }
                        )
                        );
                      },
                      child: _buildToDoList("Planned", Icons.calendar_today_outlined, Colors.green.shade700)
                  )
              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                  width: 390,

                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context){
                              return AssignedToYou();
                            }
                        )
                        );
                      },
                      child: _buildToDoList("Assigned to you ", Icons.person_outline, Colors.green.shade900)
                  )
              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                  width: 390,

                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context){
                              return Tasks();
                            }
                        )
                        );
                      },
                      child: _buildToDoList("Tasks", Icons.home_outlined, Colors.blueGrey)
                  )
              )
            ],
          ),
        ],
      ),
      ),
    );
}


Widget _bottomNavigationBar(){
  return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
              FlatButton(
                  onPressed: (){},
                     child: Row(
                        children:<Widget> [
                                Container(
                               margin: EdgeInsets.only(right: 10),
                                child:  Icon(
                                    Icons.add,
                                       color: Color.fromRGBO(81, 81, 189, 1),
                                        size: 30,
                              ),
                          ),

                       Text(
                        "New list",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(81, 81, 189, 1)
                        ),
                       ),
                     ],
                  )

              ),
          IconButton(
             icon: Icon(
                Icons.add_to_photos,
              color: Color.fromRGBO(81, 81, 189, 1),
              size: 30,
            ),
            onPressed: (() {})
        )
      ]
  );

}

}
