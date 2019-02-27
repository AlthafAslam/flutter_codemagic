import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_app/Managers/object_factory.dart';
import 'package:flutter_ui_app/managers/user_manager.dart';
import 'package:flutter_ui_app/Screens/landing_screen.dart';
import 'package:flutter_ui_app/utils/network_utils.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Email ID',
                hintText: 'Enter Essar mail ID',
                icon: Icon(
                  Icons.email,
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter the username here';
                }
              },
            ),
            new TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                icon: Icon(Icons.visibility_off),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter the password here';
                }
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: double.infinity,
              child: new RaisedButton(
                child: Text('Login button'),
                onPressed: () async {
                  await performLogin();
                },
              ),
            )
          ]),
    );
  }

  Future<void> performLogin() async {
    if (await NetworkUtil().checkConnectivity()) {
      ObjectFactory()
          .userManager
          .login(
              username: usernameController.text,
              password: passwordController.text)
          .then((responseFromUserManager) {
        if (responseFromUserManager == "success") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LandingScreen()),
          );
        }else{
          _loginErrorDialog(
              title: "Login failed", message: "Name or password is incorrect.");
        }
      });
    } else {
      _loginErrorDialog(
          title: "No connectivity", message: "No connectivity");
    }
  }

  void _loginErrorDialog({String title, String message}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Row(
            children: <Widget>[
              Icon(
                Icons.error_outline,
                color: Colors.red,
              ),
              SizedBox(
                width: 8.0,
              ),
              new Text(
                title,
              )
            ],
          ),
          content: new Text(message),
          actions: <Widget>[
            new FlatButton(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: new Text(
                "Okay",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new Text("")
          ],
        );
      },
    );
  }
}
