import 'package:flutter/material.dart';
import 'Emails.dart';
import 'Contact.dart';
import 'User.dart';

class Home extends StatefulWidget {
  @override
  _state createState() => _state();
}
class _state extends State <Home> {
  int navbarindex=0;
  final List <Widget> _pages=[
    Home(),
    Contact(),
    User(),
  ];
/*_onTap(){
  Navigator.of(context).push(MaterialPageRoute(builder: BuildContext)=>_pages[navbarindex]);
}*/

  @override
  Widget build(BuildContext context) {
    final List <Widget> _pages = [
      Center(
        child: ListView.builder(
          itemCount: Emails.mail.length,
          itemBuilder: (context, i) => EmailsCont(index: i),
        ),
      ),
      Contact(),
      User(),
    ];

    return SafeArea(
        child: Scaffold(
          body: _pages[navbarindex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            iconSize: 30.0,
            onTap: (index){
              setState(() {
                navbarindex=index;
              });
              //_onTap();
            },
            selectedItemColor: Colors.white,
            currentIndex: navbarindex,
            items: [
              BottomNavigationBarItem(icon: Icon(
                  Icons.mail),
                  label: 'Emails'
              ),
              BottomNavigationBarItem(icon: Icon(Icons.phone),
                  label: 'Contacts'),
              BottomNavigationBarItem(icon: Icon(Icons.home),
                  label:'Profile' )
            ],
          ),
          drawer: Drawer(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Menu',
                        style: TextStyle(fontSize: 30,),
                      ),
                      width: double.infinity,
                      height: 100,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("Emails",style: TextStyle(fontSize: 30.0),),

          ),
        )
    );
  }
}
class EmailsCont extends StatelessWidget{
  final int index;
  EmailsCont({ this.index}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12.0),

      ),
      child: Text(
        Emails.mail[index],
        style: TextStyle(
          fontSize: 20.0,

        ),
      ),
    );
  }
}
