
import 'package:flutter/material.dart';

class SinglePageTasks extends StatefulWidget {
  @override
  _SinglePageTasksState createState() => _SinglePageTasksState();
}

class _SinglePageTasksState extends State<SinglePageTasks> {
  Widget _buildItems (IconData icon,String title){
    return  FlatButton(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                 icon,
                  color: Colors.grey.shade800
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 17),
            ),
          ],
        ),
        onPressed: () {}
    );
  }
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
                  color: Colors.grey.shade600,
                  size: 30,
                ),
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "My Day ",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),
            ) ,
          )
          ],
        ),
      ),
    );
  }

  Widget _body(){
    return  SingleChildScrollView(
    child:Column(
       children: <Widget>[
         Container(
            padding: EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            IconButton(
                icon: Icon(
                    Icons.fiber_manual_record_outlined,
                    size: 35,
                  color: Colors.grey.shade700,
                ),
                onPressed: () {}),

                 Text(
                     "My Day",
                      style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w600,
                      color: Colors.black
                      )
                 ),
                  Spacer(),
                  IconButton(
                     icon: Icon(
                         Icons.star_border,
                         size: 35,
                         color: Colors.grey.shade700,
                     ),
                     onPressed: () {}),
                  ],
                  )
         ),

                  FlatButton(
                      child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only( top: 14),
                                 padding: EdgeInsets.only(left: 5),
                                 child: Icon(
                                     Icons.add,
                                     color:Colors.blueAccent,
                                     size: 25,
                                 ),

                            ),
                                  Container(
                                    padding: EdgeInsets.only(left: 15, top: 11),
                                    child: Text(
                                      "Add step",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 20
                                      ),
                                    ),
                                  ),

                            ]
                      ),
                            onPressed: () {

                            }
                            ),
                         SizedBox(
                           height: 25,
                         ),
                         Divider(
                             color: Colors.grey[800]
                         ),
                         Card(
                            color: Colors.white,
                            child: FlatButton(
                                child: Row(
                                    children: <Widget>[
                                       Container(
                                          child: Icon(
                                              Icons.wb_sunny_outlined,
                                              color: Colors.grey.shade800
                                          ),
                                       margin: EdgeInsets.only(right: 20)
                                       ),
                                        Text(
                                          "Add to my day",
                                            style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontSize: 17
                                            ),
                                        ),
                                  ]
                                ),
                                      onPressed: () {}
                                      ),
                         ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                              color: Colors.white,
                              child: Column(
                                  children: <Widget>[
                                     _buildItems(Icons.alarm, "Remind My Day"),
                                   Divider(
                                       color: Colors.grey.shade500,
                                       indent: 55
                                   ),
                                    _buildItems(Icons.calendar_today, "Add due date"),
                                      Divider(
                                          color: Colors.grey.shade500,
                                        indent: 55,
                                      ),
                                _buildItems(Icons.repeat, "Repeat")
                              ]
                              ),
                          ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white,
                           child: _buildItems(Icons.attach_file, "Add file")
                      ),
                       SizedBox(
                         height: 10,
                       ),
                       Card(
                          child: Container(
                             margin: EdgeInsets.only(top: 10),
                             padding: EdgeInsets.all(10),
                             child: Container(
                               height: 120,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(10)),
                                   color: Colors.white
                               ),
                               child: TextField(
                                   style: TextStyle(
                                       color: Colors.grey.shade800
                                   ),
                                   decoration: InputDecoration(
                                     border: UnderlineInputBorder(
                                         borderSide: BorderSide.none
                                     ),
                                     contentPadding: EdgeInsets.all(10),
                                     hintText: "Add note",
                                     hintStyle: TextStyle(
                                         color: Colors.grey.shade800
                                     ),
                                   ),
                                   autocorrect: true,
                                   cursorColor: Colors.white,
                                   expands: true,
                                   maxLines: null,
                                   minLines: null
                               ),

                             ),
                           ),
                       ),

                    Container(
                         margin: EdgeInsets.only(top: 20),
                         padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: <Widget>[
                          Text(
                              "Created on Sun 27 Dec",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 15
                            ),
                          ),
                           Container(
                                height: 25,
                                width: 25,
                               child: IconButton(
                                   alignment: Alignment.center,
                                   padding: EdgeInsets.all(0),
                                     icon: Icon(
                                         Icons.delete_outline,
                                         color: Colors.grey.shade800
                                     ),
                                   onPressed: () {}
                                   ),
                           ),
                           ],
                       ),
                    ),
                ],
                ),
    );
  }

}
