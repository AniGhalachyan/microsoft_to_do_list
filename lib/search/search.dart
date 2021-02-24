import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List <String> search =[
    'https://www.graphicsfuel.com/wp-content/uploads/2011/12/magnifying-glass-search-icon.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
                  color: Colors.grey.shade600,
                  size: 30,
            ),
          ),
          ),
              Expanded(
                  child: TextField(
                    textAlign: TextAlign.start,
                      autofocus: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Colors.blue,
                            fontSize: 20,
                          )
                      )
                  ),
              ),
              IconButton(
                  icon: Icon(
                      Icons.mic,
                      color: Colors.grey.shade600,
                    size: 30,
                  ),
                  onPressed: () {
                  }
              ),
              IconButton(
                  icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey.shade600,
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
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(search[0]),
                  radius: 100,
                )
              ],
            ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text('What would you like to find? You can search within tasks, steps and notes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  )
              )
          )
        ],
      ),

    );
  }
}
