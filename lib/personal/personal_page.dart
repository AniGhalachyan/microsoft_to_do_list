import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/personal/addAccount.dart';
import 'package:microsoft_to_do_list/personal/manageAccount.dart';
import 'package:microsoft_to_do_list/personal/settings.dart';
class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  List<String> avatarUrl=[
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _appBar(),
          body:  _body(),
        )
    );
  }
  Widget _appBar(){
    return PreferredSize(
        preferredSize: Size.fromHeight(100),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
           CircleAvatar(
             radius: 35,
             backgroundImage:NetworkImage(avatarUrl[0]) ,
           ),

            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child:Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.clear,
                  color: Colors.blue,
                  size: 25,
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
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        // margin: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>  [
            Text(
              "Poghos Poghosyan ^",
              style: TextStyle(
                fontSize: 18,
               fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "poghospoghosyan@gmail.com",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade800
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            Container(
              child: Row(
                children: <Widget> [
                   GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context){
                            return AddAccount();
                          }
                      )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),

                    ),
                  ),
                   Text(
                    "Add Account",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: <Widget> [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context){
                            return ManageAccount();
                          }
                      )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 30,
                      ),

                    ),
                  ),
                  Text(
                    "Manage Account",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context){
                            return Settings();
                          }
                      )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 30,
                      ),

                    ),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
 }

}
