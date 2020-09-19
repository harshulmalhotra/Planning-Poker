import 'package:flutter/material.dart';
import 'package:planningpoker2/Home3.dart';
import 'package:planningpoker2/size.dart';

class name2 extends StatefulWidget {
  @override
  _name2State createState() => _name2State();
}

class _name2State extends State<name2> {
  String name="";
  final _formkey=GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(

        body: Container(
          height: SizeConfig.blockSizeVertical * 100,
          width: SizeConfig.blockSizeHorizontal * 100,

          padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 10,
               SizeConfig.blockSizeVertical * 8, SizeConfig.blockSizeHorizontal * 10,
              0,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    children: [
                      Text('Welcome',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:  SizeConfig.safeBlockHorizontal * 8,
                      ),),
                      SizedBox(height: 20,),
                      Text('We would like to know your name'
                        ,textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                      ),),
                    ],
                  ),

                SizedBox(height:SizeConfig.blockSizeVertical * 5,),
                Container(
                  height: SizeConfig.blockSizeVertical * 30,
                  width: SizeConfig.blockSizeHorizontal * 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Illustration.png'),
                    )
                  ),
                ),
                SizedBox(height:SizeConfig.blockSizeVertical * 5,),
                Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: TextFormField(
                        validator: (val)=>val.isEmpty?'Enter Your Name':null,

                        decoration: InputDecoration(
                            hintText:'Enter your Name',

                           fillColor: Colors.white70,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width:2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width:2),
                            borderRadius: BorderRadius.circular(50),
                          ),



                        ),

                        onChanged: (val)
                        {
                          setState(() =>name=val);
                        },

                      ),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: SizeConfig.blockSizeVertical*8,
                     onPressed: () async{
                      if(_formkey.currentState.validate())
                      {
                        Navigator.pushNamed(context, '/home3');
                      }
                      },

                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Continue',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ),
                  ],

                )
              ],
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


