import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_app/Screens/bottomNavigation_Screen.dart';

var items = ['Essar','Gujj','Ali','qwd','Asus','MacBook','MacBook Pro','Redmi','Malayalam','Mouse','CUSAT','DDUKK',
'Laptops','Gujarath','Surath','Steels','Central'];
//final items = List<String>.generate(100, (i) => "Item $i");

class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BottomNavigationPage(),
//          child: new ListView.builder(
//            itemCount: items.length,
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text('${items[index]}'),
//              );
//            },
//          ),


//          child: Text('Username is: $landingScreenUID and password is $landingScreenPasskey')
      );

  }

}

