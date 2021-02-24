import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/widget/popup_menu.dart';
class AssignedToYou extends StatefulWidget {
  static const routeName='/assigned';

  @override
  _AssignedToYouState createState() => _AssignedToYouState();
}

class _AssignedToYouState extends State<AssignedToYou> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(214,240,229, 1),
        appBar: _appBar(),
        body: _body(),
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
                  color: Color.fromRGBO(25,105,72,1),
                  size: 30,
                ),
              ),
            ),
            Spacer(),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(25,105,72,1),
                ),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    child: popupMane(Icons.add_to_home_screen, "Add shortcut to homescreen ")
                  ),
                  PopupMenuItem(
                    child: popupMane(Icons.crop_3_2, "Change theme")
                  ),
                  PopupMenuItem(
                    child: popupMane(Icons.check_circle_outline, "Show completed tasks")
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
                  "Assigned to you",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(25,105,72,1)
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
                child: Image.asset('lib/img/3.jpg'),
              )
            ],
          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text("Tasks assigned to you show up here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(25,105,72,1)
                  )
              )
          )
        ],

      ),

    );
  }

}
