import 'package:flutter/material.dart';
import 'signup_form.dart';

//final items = List<String>.generate(10000, (i) => "Item $i");

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
//  final userID = TextEditingController();
//  final passKey = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("testing");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        margin: new EdgeInsets.symmetric(horizontal: 20.0),

        child: Column(
            children: <Widget>[ new Image.asset('assets/images/essar_logo.png'),
              new SignUpForm()
        ]
        ),

      ),

//      child: new ListView(
//        children: <Widget>[
//          Container(child: Image.asset('assets/images/etracker_logo.png')),
//          Text(
//            'Welcome to the Essar Community',
//            textAlign: TextAlign.center,
//            style: TextStyle(fontFamily: 'assets/fonts/Merienda-Regular.ttf'),
//          ),
//          new TextFormField(
//            controller: userID,
//            decoration: InputDecoration(
//                icon: Icon(Icons.person),
//                hintText: 'Enter the ESSAR Employee ID here',
//                labelText: 'User ID'),
//          ),
//          new TextFormField(
//            controller: passKey,
//            obscureText: true,
//            decoration: new InputDecoration(
//                icon: Icon(Icons.visibility_off),
//                hintText: 'Enter your Password here',
//                labelText: 'Password'),
//          ),
//          new RaisedButton(
//            child: const Text('Navigate to Landing Screen'),
//            elevation: 4.0,
//            onPressed: () {
//              performLogin();
//            },
//          )
//        ],
//      ),
    );
  }

}
