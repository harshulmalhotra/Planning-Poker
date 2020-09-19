


import 'package:meta/dart2js.dart';
import 'package:flutter/material.dart';
import 'package:planningpoker2/Cards/tshirtcards.dart';
import 'package:planningpoker2/name2.dart';


import 'package:planningpoker2/Cards/standardcards.dart';
//import 'package:flutkart/pages/home_screen.dart';
//import 'package:flutkart/pages/intro_screen.dart';
import 'package:planningpoker2/Cards/card.dart';

import 'package:planningpoker2/Cards/cards2.dart';
import 'package:planningpoker2/Splash_screeen2.dart';
import 'package:planningpoker2/Home3.dart';
import 'package:planningpoker2/screens/Onboarding3.dart';
var routes = <String, WidgetBuilder>{
 // "/home": (BuildContext context) => HomeScreen(),
  //"/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash_screen2',
    routes:
    {
    // '/name':(context)=>name(),
      '/cards':(context)=>Card_poker(),
     '/cards2':(context)=>Card_poker2(),
      '/splash_screen2':(context)=>splash_screen2(),
      '/name2':(context)=>name2(),
      '/card_poker_standard':(context)=>Card_poker_standard(),
      '/card_poker_tshirt':(context)=>Card_poker_tshirt(),
      '/home3':(context)=>home3(),
      '/onboarding3':(context)=>onboarding(),
    },
));