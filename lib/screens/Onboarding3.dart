import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker2/size.dart';
import 'package:planningpoker2/size.dart';

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final int _numPages = 2;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black: Colors.yellow,
        border: isActive?Border.all(color:Colors.black):Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
    body: Container(
      height: SizeConfig.blockSizeVertical * 100,
      width: SizeConfig.blockSizeHorizontal * 100,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical* 5),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
    onPressed: () => Navigator.pushReplacementNamed(context,'/name2'),
    child: Text(
    'Skip',
    style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    ),
    ),
    ),
    ),
      Container(
        height: SizeConfig.blockSizeVertical * 70,
        width: SizeConfig.blockSizeHorizontal*60,
        child: PageView(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: <Widget>[
            Padding(

              padding:EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/onboarding0.png',
                      ),
                      height: SizeConfig.blockSizeVertical * 30,
                      width: SizeConfig.blockSizeHorizontal * 70,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 10),
                  Text(
                    'Are You Working in a Scrum Team and Tired of Carrying old,dirty Cards?',
                 style: TextStyle(
                   fontSize: SizeConfig.safeBlockHorizontal *5,
                   fontWeight: FontWeight.normal,
                   color: Colors.black,
                 ),
                 //   style: kTitleStyle,
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/onboarding2.png',
                      ),
                      height: SizeConfig.blockSizeVertical * 30,
                      width: SizeConfig.blockSizeHorizontal * 70,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 10),
                  Text(
                    'No need to worry,We are here with PokerNeo',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal *5,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),


                //    style: kTitleStyle,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildPageIndicator(),
      ),
      _currentPage != _numPages - 1
          ? Expanded(
        child: Align(
          alignment: FractionalOffset.bottomRight,
          child: FlatButton(
            onPressed: () {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
          ),
        ),
      )
          : Text(''),

],



    ),

    ),),
   bottomSheet: _currentPage == _numPages - 1
          ? GestureDetector(
     onTap: ()=>Navigator.pushReplacementNamed(context,'/name2'),
     child: Container(
     height: SizeConfig.blockSizeVertical * 12,
     width: SizeConfig.blockSizeHorizontal * 100,
        color: Colors.yellow,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2,),
            child: Center(
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
          )
       : Text(''),
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
    paint.color=Colors.white10;
    canvas.drawPath(mainbackground, paint);
    Path curvepath=Path();
    paint.style=PaintingStyle.fill;
    curvepath.moveTo(width*0.2, height*0.7);
    curvepath.quadraticBezierTo(0, 0, width*0.2, 0.6);
   // curvepath.quadraticBezierTo(width*0.5, height*0.3, width*0.5, height*0.4);
    //curvepath.quadraticBezierTo(width*0.7, height*0.53, width, height*0.40);



    //curvepath.quadraticBezierTo(width*0.5, height*0.4, width*0.7, height*0.4);


   // curvepath.lineTo(width, height);
    //curvepath.lineTo(0, height);



    //curvepath.cubicTo(, y1, x2, y2, x3, y3)
    paint.color=Colors.yellow;
    canvas.drawPath(curvepath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate!=this;
  }


}
