import 'package:flutter/material.dart';
class AddAccount extends StatefulWidget {
  @override
  _AddAccountState createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
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
        // height: 50,
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
                "Add account",
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
      child: Column(

        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset('lib/img/5.jpg'),
                ),
              ],
          ),
             Container(
                height: 50,
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child:Column  (
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.s,
                    children: <Widget> [
                      TextField(
                          textAlign: TextAlign.start,
                          autofocus: true,
                          style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 25),
                            hintText: "Email or phone number",
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide.none
                            ),
                        ),
                          )

                    ],

                  ) ,
                ),

          ),
         SizedBox(
        height: 10,
       ),
           GestureDetector(
             onTap: (){},
             child:  Container(
               color: Color.fromRGBO(16,116,228, 1),
               height: 40,
               width: 300,
               child:Column  (
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 // crossAxisAlignment: CrossAxisAlignment.s,
                 children: <Widget> [
                   Text(
                     "Sign in ",
                     style: TextStyle(
                         color: Colors.white,
                       fontSize: 18,
                     ),
                   )
                 ],
               ) ,
             ),
           ),
          SizedBox(
            height: 10,
          ),

            Container(

              height: 50,
              width: 300,
              child:Column  (
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.s,
                children: <Widget> [
                  Text(
                    "Sign in with a work, school, or Microsoft account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  )
                ],
              ) ,
            ),

          SizedBox(
            height: 190,
          ),
          Container(
            child: Text(
              "Create a new account ",
              style: TextStyle(
                color: Color.fromRGBO(16,116,228, 1),
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }

}
