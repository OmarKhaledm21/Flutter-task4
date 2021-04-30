import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget{
  @override
  _User createState()=>_User();
}


class _User extends State<User>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            User_Container(),
          ],
        ),
      ),
    );
  }
}

class User_Container extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: 400,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15)
      ),
      child:Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person,
              size: 150.0,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Omar Khaled',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.mail,color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left:10.0),
                      child: Text('MAIL',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone, color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Text('PHONE',
                          style:TextStyle(fontSize: 25.0)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.dashboard, color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Text('Dashboard',
                          style:TextStyle(fontSize: 25.0)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.tag, color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Text('Serial',
                          style:TextStyle(fontSize: 25.0)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.logout, color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Text('Logout',
                          style:TextStyle(fontSize: 25.0)
                      ),
                    )
                  ],
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}

