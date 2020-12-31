import 'package:flutter/material.dart';
import 'package:microsoft_to_do_list/toDoList/singlePage/singlePageOfMyDay.dart';
import 'package:intl/intl.dart';

class MyDay extends StatefulWidget {
  @override
  _MyDayState createState() => _MyDayState();
}

class _MyDayState extends State<MyDay> {
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
                    IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                        }
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
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                   ),
                   height: 60,
                     padding: EdgeInsets.symmetric(horizontal: 15),
                     margin: EdgeInsets.only(top: 150),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         GestureDetector(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(
                                 builder: (context){
                                   return SinglePageTasks();
                                 }

                             ));
                           },
                           child: Icon(
                               Icons.fiber_manual_record_outlined,
                               size: 30,
                               color: Colors.grey.shade500
                           ),
                         ),



                          Container(
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
                         Spacer(),
                         IconButton(
                             icon: Icon(Icons.star_border,
                                 size: 25, ),
                             onPressed: () {}),
                       ],
                     )) ,
               ),
            ],
        ),
    );
  }


  Widget _button(){
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(140,51,52,1),
      onPressed: () {},
      child: Icon(
          Icons.add,
          color: Colors.white
      ),

    );
  }
  }


