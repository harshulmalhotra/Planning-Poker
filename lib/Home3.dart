

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planningpoker2/Cards/card.dart';
import 'package:planningpoker2/size.dart';
class home3 extends StatefulWidget {
  @override
  _home3State createState() => _home3State();
}


class _home3State extends State<home3> {
  String name="";
  final _formkey=GlobalKey<FormState>();
  Future<bool> _OnExitPressed()
  {
  return showDialog(context:context,
        builder: (context)=>AlertDialog(
          title: Text('Do you really want to Exit?'),
          actions: [
            FlatButton(
              child: Text('No'),
              onPressed: (){

                Navigator.pop(context,true);

              },
            ),
            FlatButton(
              child: Text('Yes'),
              onPressed:(){

                SystemNavigator.pop();

              },
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: WillPopScope(
        onWillPop: _OnExitPressed,
        child: Scaffold(


          body: Container(
            height: SizeConfig.blockSizeVertical*100 ,
            width: SizeConfig.blockSizeHorizontal*100,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*10,
                SizeConfig.blockSizeVertical*10 ,SizeConfig.blockSizeHorizontal*10,SizeConfig.blockSizeVertical*5 ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('PokerNeo',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      SizedBox(height: SizeConfig.blockSizeVertical*5,),

                    ],
                  ),


                  Container(
                    height: SizeConfig.blockSizeVertical*35 ,
                    width: SizeConfig.blockSizeHorizontal*80,
                    decoration: BoxDecoration(

                        image: DecorationImage(

                          image: AssetImage('assets/images/onboarding1.png'),
                        )
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical*8,),
                  Column(
                    children: [


                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.pushNamed(context, '/cards');
                        }
                        ,
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),

                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Show Cards',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),),
                      ),
                      SizedBox(height: 20,),

                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          _OnExitPressed();





                        }

                        ,

                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),

                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Exit',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),),
                      )
                    ],

                  )
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
    curvepath.moveTo(0, height*0.5);
    curvepath.quadraticBezierTo(width*0.3, height*0.3, width*0.5, height*0.5);
    curvepath.quadraticBezierTo(width*0.6, height*0.6, width, height*0.5);
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

