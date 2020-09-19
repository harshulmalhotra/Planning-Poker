

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker2/size.dart';
import 'package:planningpoker2/screens/Onboarding3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:planningpoker2/name2.dart';
class splash_screen2 extends StatefulWidget {
  @override
  _splash_screen2State createState() => _splash_screen2State();
}

class _splash_screen2State extends State<splash_screen2> {
  @override
  bool firstTime;
  SharedPreferences prefs;
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  startTimer() async
  {
    prefs = await SharedPreferences.getInstance();
    firstTime = prefs.getBool('first_time');

    var duration=Duration(seconds:4);
    if (firstTime != null && !firstTime) {// Not first time
      return new Timer(duration, navigationPageHome);
    } else {// First time
      prefs.setBool('first_time', false);
      return new Timer(duration, navigationPageWel);
    }

  }
  void navigationPageHome() {
    Navigator.of(context).pushReplacementNamed('/name2');
  }

  void navigationPageWel() {

    Navigator.of(context).pushReplacementNamed('/onboarding3');
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        height: SizeConfig.blockSizeVertical * 100,
        width: SizeConfig.blockSizeHorizontal * 100,
        child: Scaffold(
          backgroundColor:Colors.white,
          body:CustomPaint(
            painter: YellowPainter(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  //  height:  SizeConfig.blockSizeVertical * 40,
                    //width:   SizeConfig.blockSizeHorizontal * 40,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,

                      radius: SizeConfig.blockSizeHorizontal * 20,


                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: SizeConfig.blockSizeHorizontal * 15,
                      ),
                    ),

                  ),
                  SizedBox(height:SizeConfig.blockSizeVertical * 14),
                  Text('PokerNeo',
                  style: TextStyle(
                    color: Colors.black,
                      fontSize: SizeConfig.safeBlockHorizontal * 8,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),)
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
class YellowPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size){
 final height=size.height;
  final width=size.width;
    Paint paint=Paint();
    Path mainbackground=Path();
    mainbackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color=Colors.white;
    canvas.drawPath(mainbackground, paint);
    Path curvepath=Path();
    paint.style=PaintingStyle.fill;
    curvepath.moveTo(0, height*0.4);
  curvepath.quadraticBezierTo(width*0.3, height*0.3, width*0.5, height*0.5);
 curvepath.quadraticBezierTo(width*0.5, height*0.3, width*0.5, height*0.4);
 curvepath.quadraticBezierTo(width*0.7, height*0.53, width, height*0.40);



 //curvepath.quadraticBezierTo(width*0.5, height*0.4, width*0.7, height*0.4);


 curvepath.lineTo(width, height);
 curvepath.lineTo(0, height);



    //curvepath.cubicTo(, y1, x2, y2, x3, y3)
    paint.color=Colors.yellow;
    canvas.drawPath(curvepath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate!=this;
  }


}
