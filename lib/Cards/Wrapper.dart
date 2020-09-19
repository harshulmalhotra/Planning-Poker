import 'package:flutter/material.dart';
import 'package:planningpoker2/Cards/hidecard.dart';
//import 'package:planningpoker2/Cards/hidecard.dart';
import 'package:planningpoker2/Cards/imagescreen.dart';
import 'package:planningpoker2/Cards/Colors.dart';

class wrapper extends StatefulWidget {
  color_number color;
  wrapper(this.color);
  @override
  _wrapperState createState() => _wrapperState(color);
}

class _wrapperState extends State<wrapper> {
 final color_number color;
  _wrapperState(this.color);
  bool hide=true;
  void toggleview()
  {
    setState(() =>hide=!hide);
  }
  @override
  Widget build(BuildContext context) {
    if(hide){
    return image_screen(color:color,toggleview: toggleview) ;
    }
   else
      {
      return hide_card(color:color,toggleview:toggleview);
      }
  }
}
