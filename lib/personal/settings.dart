
import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget _buildSettingItems(IconData icon,  String title){
    return Row(
      children: <Widget> [
        Container(

          child: Icon(
            icon,
            color: Colors.blueAccent.shade700,

          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child:  Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
          ),
        )

      ],
    );
  }

  bool _switch = false;

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
               "Settings",
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
                   radius: 35,
                   backgroundImage: NetworkImage(avatarUrl[0]),
                 ),
                 Container(
                   padding: EdgeInsets.all(10),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget> [
                       SizedBox(
                         height: 40,
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
                         height: 25,
                       ),
                       Divider(
                         indent: 55,
                         color: Colors.grey,
                       ),
                       Text(
                           "MANAGE ACCOUNT ",
                           style: TextStyle(
                             color:  Colors.blue,
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           )
                       ),
                       SizedBox(
                         height: 25,
                       ),
                       Divider(
                         indent: 55,
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
               height: 10 ,
             ),
             Container(

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [

                       Text(
                         "General",
                         style: TextStyle(
                             fontSize: 15,
                             color: Colors.blue,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                        Container(
                           child: Row(
                               children: <Widget>[
                                       Text(
                                           "Add new tasks on top",
                                           style: TextStyle(
                                               color: Colors.black,
                                             fontSize: 18
                                           )
                                       ),
                                 Spacer(),
                                 Switch(
                                     value: _switch,
                                     onChanged: (val) {
                                       setState(() {
                                         _switch=val;
                                       });
                                     })
                               ]
                           )
                       ),
                        SizedBox(
                         height: 10,
                    ),
                   Container(
                       child: Row(
                           children: <Widget>[
                                   Text(
                                       "Move starred tasks to top",
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 18
                                       )
                                   ),

                             Spacer(),
                             Switch(
                                 value: true,
                                 onChanged: (bool newValue) {
                                 })
                           ]
                       )
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                       child: Row(
                           children: <Widget>[
                                   Text(
                                       "Play completion sound",
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 18
                                       )
                                   ),
                             Spacer(),
                             Switch(
                                 value: true,
                                 onChanged: (bool newValue) {
                                 }
                                 )
                           ]
                       )
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                       child: Row(
                           children: <Widget>[
                                   Text(
                                       "Confirm before deleting",
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 18
                                       ),
                                   ),
                             Spacer(),
                             Switch(
                                 value: true,
                                 onChanged: (bool newValue) {
                                 })
                           ]
                       )
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                       width: 500,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget> [
                           Text(
                             "Theme",
                            style: TextStyle(
                             color: Colors.black,
                             fontSize: 18
                           ),
                           ),
                           Text(
                             "Use my System theme",
                             style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 12
                             ),
                           ),
                         ],
                       ),
                   ),
                     ],
                   ),
             ),
             SizedBox(
               height: 15,
             ),
             Divider(
               color: Colors.grey,
               thickness: 1.5,
             ),
             Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [
                   Text(
                     "Smart lists",
                     style: TextStyle(
                         fontSize: 15,
                         color: Colors.blue,
                         fontWeight: FontWeight.bold
                 ),
                 ),
                 Container(
                  child: Row(
                   children:<Widget> [
                     Container(
                         child: _buildSettingItems(Icons.all_inclusive, "All")
                       ),
                   Spacer(),
                   Switch(
                       value: false,
                       onChanged: (bool newValue) {
                       })
                 ],
               ),

             ),
                 Container(
                 child: Row(
                   children:<Widget> [
                   Container(
                     child: _buildSettingItems( Icons.star_border, "Important")
                   ),
                   Spacer(),
                   Switch(
                       value: true,
                       onChanged: (bool newValue) {
                       })
                 ],
               ),

             ),
                 Container(
                   child: Row(
                     children:<Widget> [
                       Container(
                         child: _buildSettingItems(Icons.calendar_today_outlined, "Planned")
                   ),
                     Spacer(),
                      Switch(
                       value: true,
                       onChanged: (bool newValue) {
                       })
                 ],
               ),

             ),
                 Container(
                  child: Row(
                  children:<Widget> [
                   Container(
                     child: _buildSettingItems(  Icons.person_outline, "Assigned to you")
                   ),
                   Spacer(),
                   Switch(
                       value: true,
                       onChanged: (bool newValue) {
                       })
                 ],
               ),

             ),
                   Container(
                    child: Row(
                    children:<Widget> [
                     Container(
                      child: _buildSettingItems( Icons.check_circle_outline, "Completed")
                   ),
                         Spacer(),
                         Switch(
                       value: true,
                       onChanged: (bool newValue) {
                       })
                 ],
               ),

             ),

                 ],
               ),
             ),
          ]
        ),
        )
               ),
             );

  }
}
