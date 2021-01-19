import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/personal/addAccount.dart';
class ManageAccount extends StatefulWidget {
  @override
  _ManageAccountState createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
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
        )
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
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Manage accounts",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body(){
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all( 10),
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(avatarUrl[0]),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "poghospoghosyan@gmail.com",
                              style: TextStyle(
                                color:  Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 1.5,
                            color: Colors.grey,
                          ),
                          Text(
                              "SIGN OUT",
                              style: TextStyle(
                                color:  Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                Container(
                  width: 380,
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
                        child: Row(
                          children: <Widget> [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                "Add Account",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                            )

                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
