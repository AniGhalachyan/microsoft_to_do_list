import 'package:flutter/material.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/toDoList/assigned_to_you.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/toDoList/important.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/toDoList/my_day.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/personal/personal_page.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/toDoList/planned.dart';
import 'file:///C:/Users/User/AndroidStudioProjects/microsoft_to_do_list/lib/toDoList/tasks.dart';
import 'package:microsoft_to_do_list/search/search.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<String> avatarUrl=[
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
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
                padding: EdgeInsets.symmetric(horizontal: 15),
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
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return MyDay();
                        }
                    )
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.wb_sunny_outlined,
                    ),
                  ),
                ),

              ),

              Text(
                  "My Day",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return Important();
                        }
                    )
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                  ),
                ),

              ),
              Text(
                  "Important",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
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
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.green,
                    ),
                  ),
                ),

              ),
              Text(
                  "Planned",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),

              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return AssignedToYou();
                        }
                    )
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.green,
                    ),
                  ),
                ),

              ),
              Text(
                  "Assigned To You",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),

              )
            ],
          ),
          Row(
            children:<Widget> [
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){
                          return Tasks();
                        }
                    )
                    );
                  },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.home_outlined,
                      ),
                    ),
                  ),

                ),
                Text(
                    "Tasks",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),
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
        Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: ((){}),
                      icon: Icon(
                        Icons.add,
                        color: Color.fromRGBO(81, 81, 189, 1),
                        size: 30,
                      ),
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
            ]
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
