import 'package:flutter/material.dart';

class Contact extends StatefulWidget{
  @override
  _Contact createState() => _Contact();

}

class _Contact extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Contact_info(
              name: "Omar the magnificent",
              mail: "trump@MAGA.com",
              phone: "01129312392",
              photo:"https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/1200px-SpongeBob_SquarePants_character.svg.png"
            ),
            Contact_info(
              name: "SpongeBOB",
              mail: "READY@KRABS.BURGER.com",
              phone: "022393832",
              photo: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/1200px-SpongeBob_SquarePants_character.svg.png",
            ),
            Contact_info(
              name: "Mr.Krabs",
              mail: "KRABS@MONEY.com",
              phone: "+02 0239234",
              photo: "https://spongebob.fandom.com/wiki/Eugene_H._Krabs?file=Krabs+artwork.png"
            ),
          ],

        ),


      ),
      appBar:  AppBar(backgroundColor: Colors.red,
        title: Text("Contacts",style: TextStyle(fontSize: 30.0),),),
    );
  }
}

class Contact_info extends StatelessWidget {
  String name,mail,phone;
  String photo;
  Contact_info({this.name,this.mail,this.phone,this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 400,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.elliptical(30, 20))
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(this.photo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.mail,color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left:2.0),
                      child: Text(this.mail,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone, color:Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 3.0),
                    child: Text(this.phone,
                        style:TextStyle(fontSize: 16.0)
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