import 'package:flutter/material.dart';
import 'Colors.dart';
import 'package:planningpoker2/Cards/card.dart';
import 'package:planningpoker2/size.dart';

class hide_card extends StatelessWidget {
  final color_number color;
  final Function toggleview;


  hide_card({this.color,this.toggleview});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            RaisedButton(
              child: Text('Show',style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
              color: Colors.white,
              onPressed: (){
                toggleview();
              },
           //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(300.0))),

            ),

          ],
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(70.0, 70.0, 70.0, 70.0),
          child:Column(
            children: [
              Expanded(
                flex:3,
                child: CustomPaint(
                  painter: ColorPainter(),
                  child: Container(
                   width:SizeConfig.blockSizeHorizontal*70,
                    height:SizeConfig.blockSizeVertical* 70,




                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),

                     // color: color.color,


                    ),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        /*Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('${color.number}', style: TextStyle(
                            fontSize: 75,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                            child: Text('${color.number}', style: TextStyle(
                              fontSize: 200,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),),
                          ),
                        ),*/
                      ],
                    ),

                  ),
                ),
              ),


             ],
          ),
        ),
      ),
    );
  }
}
class ColorPainter extends CustomPainter
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


