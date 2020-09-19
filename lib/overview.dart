import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 200.0,
                  backgroundImage: AssetImage('images/angela.png'),
                ),

                Text(
                  'Are you working in a Scrum Team and Tired of carrying old, dirty cards?',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black,
                    fontSize: 24.0,
                    //letterSpacing: 7.8,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),


              ],
            )),
      ),
    );
  }
}