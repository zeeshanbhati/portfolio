import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:zeeshan_portfolio/ProjectPage.dart';
import 'package:zeeshan_portfolio/ContactPage.dart';
import 'package:zeeshan_portfolio/ProfilePage.dart';

class Testing extends StatefulWidget {
  static final String id="Testing";
  @override
  
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
   int _currentindex=0;
  @override

 
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
            index: _currentindex,
            children:[
              Home(),
              DisplayCardParalex(),
              Gal(),
            ]
        ),
      bottomNavigationBar: CurvedNavigationBar(
        color:Color(0xff2196f3),
        buttonBackgroundColor: Color(0xFFe6e6e6),
        backgroundColor:Color(0xff04033a),
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: 0,
        items:<Widget>[
        Icon(Icons.verified_user,size: 20,color:Colors.black),
        Icon(Icons.layers,size: 20,color:Colors.black),
        Icon(Icons.contacts,size: 20,color:Colors.black),
      ],
        onTap: (index){
        //print("The current index is $index");
        setState(() {
          _currentindex = index;
        });

        },
      ),
    );
  }
}
