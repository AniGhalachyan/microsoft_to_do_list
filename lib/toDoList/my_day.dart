
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../suggestion/suggestions.dart';
import '../toDoList/singlePage/singlePageOfMyDay.dart';
import '../widget/popup_menu.dart';
import '../widget/start_new.dart';

class MyDay extends StatefulWidget {
  static const routeName= '/myDay';
  @override
  _MyDayState createState() => _MyDayState();
}

class _MyDayState extends State<MyDay> {

  void _suggestion(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Suggestions(),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
     return  SafeArea(
       child: Scaffold(

          appBar: null,
         body: _body(),
         floatingActionButton: _button(),
       ),
    );
  }
     Widget _body(){
    return Container(
        child: Stack(
          alignment: Alignment.topLeft,
            children: <Widget> [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/img/pexels.jpeg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(

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
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),

                    Spacer(),
                    PopupMenuButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                            child: popupMane(Icons.sort,"Sort")
                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.add_to_home_screen, "Add shortcut to homescreen ")

                          ),
                          PopupMenuItem(
                            child: popupMane(Icons.crop_3_2, "Change theme")
                          ),
                        ]
                    )
                  ],
                ),
              ),
                  Container(
                    padding: EdgeInsets.only(top: 60,left: 20),
                     child: Text(
                       "My Day ",
                       style: TextStyle(
                           fontSize: 30,
                           color: Colors.white,
                         fontWeight: FontWeight.bold
                       ),
                    ) ,
                   ),
              Container(
                padding: EdgeInsets.only(top: 110,left: 20),
                child: Text(
                 DateFormat().add_MMMMEEEEd().format(now),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),

                ) ,
              ),

               Padding(
                 padding: EdgeInsets.all(8),
                 child:  Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white
                     ),
                     height: 60,
                     padding: EdgeInsets.symmetric(horizontal: 15),
                     margin: EdgeInsets.only(top: 150),
                     child: Row (
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget> [
                         GestureDetector(
                             behavior: HitTestBehavior.translucent,
                             onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(
                                   builder: (context){
                                     return SinglePageTasks();
                                   }
                               )
                               );
                             },
                             child: Row(
                               children: <Widget> [
                                 Icon(
                                     Icons.fiber_manual_record_outlined,
                                     size: 30,
                                     color: Colors.grey.shade500
                                 ),
                                 Container(
                                   width: 280,
                                   margin: EdgeInsets.only(top: 7),
                                   padding: EdgeInsets.only(left: 10),
                                   child:   Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget> [
                                       Text(
                                           "My Day",
                                           style: TextStyle(
                                               fontSize: 20,
                                               fontWeight: FontWeight.w600,
                                               color: Colors.black
                                           )
                                       ),
                                       Text(
                                           "Tasks",
                                           style: TextStyle(
                                               fontSize: 15,
                                               fontWeight: FontWeight.w600,
                                               color: Colors.grey.shade500
                                           )
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             )
                         ),
                         Spacer(),
                         IconButton(
                             icon: Icon(Icons.star_border,
                               size: 25, ),
                             onPressed: () {}),
                       ],
                       )

                 ),


               ),
              Container(
                margin: EdgeInsets.only(top: 680, left: 140),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color.fromRGBO(140,51,52,1),
                ),
                height: 40,
                width: 160,
                child: Row(

                  children: <Widget>[
                    FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.lightbulb_outline,
                                  color:Colors.white,
                                  size: 25,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Suggestion",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              ),

                            ]
                        ),
                        onPressed: () {
                          _suggestion(context);
                        }
                    ),
                  ],
                ),

              )

            ],


        ),
    );
  }


  Widget _button(){
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(140,51,52,1),
      onPressed: () {
        startAddNewTasks(context);
      },
      child: Icon(
          Icons.add,
          color: Colors.white
      ),

    );

  }
  }


