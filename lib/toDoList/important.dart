import 'package:flutter/material.dart';
class Important extends StatefulWidget {
  @override
  _ImportantState createState() => _ImportantState();
}

class _ImportantState extends State<Important> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255,228,233, 1),
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
                  color: Color.fromRGBO(173,57,94,1),
                  size: 30,
                ),
              ),
            ),

            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Color.fromRGBO(173,57,94,1),
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
                  "Important",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(173,57,94,1)
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
               child: Image.asset('lib/img/2.jpg'),
             )
            ],

          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text("Try starring some tasks to see them here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(173,57,94,1)
                  )
              )
          )
        ],

      ),

    );
  }



  Widget _button(){
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(173,57,94,1),
      onPressed: (){
        
      },
      child: Icon(
        Icons.add,
        color: Colors.white
      ),

    );
  }
}
