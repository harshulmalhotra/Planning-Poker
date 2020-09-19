import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:planningpoker2/Cards/Colors.dart';
import 'package:planningpoker2/Cards/imagescreen.dart';
import 'package:planningpoker2/Cards/Wrapper.dart';
class Card_poker2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(

          body: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 130, 0.0, 0.0),
            child: Column(

              children: [
                Center(
                  child: CarouselSlider
                    (
                    options: CarouselOptions(
                      height: 400,
                      enlargeCenterPage: true,


                    ),

                    items: colors.map((i){
                      return Builder(builder: (BuildContext context){return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),

                          color: i.color,


                        ),

                        child: GestureDetector(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('${i.number}',style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),),
                              ),

                              SizedBox(height: 30,),
                              Center(
                                child: Text('${i.number}',style: TextStyle(
                                  fontSize: 150,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),),
                              ),
                            ],
                          ),

                        ),

                      );
                      });

                    }).toList(),




                  ),

                ),
                SizedBox(height: 50,),
                Center(
                  child: CarouselSlider
                    (
                    options: CarouselOptions(
                      height: 50,
                      enlargeCenterPage: true,
                      viewportFraction: 0.2,

                    ),

                    items: colors.map((i){
                      return Builder(builder: (BuildContext context){return Container(
                        width: 200,
                        //    margin: EdgeInsets.symmetric(horizontal:0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),

                          color: i.color,


                        ),
                        child:
                        Center(
                          child: Text('${i.number}',style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),),


                        ),

                      );
                      });

                    }).toList(),




                  ),

                ),
              ],
            ),
          ),
        ),
      );

  }
  List<color_number> colors=
  [
    color_number(color:Colors.blue[200],number: '0'),
    color_number(color:Colors.pink[200],number: '1'),
    color_number(color:Colors.green[200],number: '2'),
    color_number(color:Colors.cyan[200],number: '3'),
    color_number(color:Colors.purple[200],number: '5'),
    color_number(color:Colors.orange[200],number: '8'),
    color_number(color:Colors.deepPurple[200],number: '13'),
    color_number(color:Colors.blue[200],number: '21'),
    color_number(color:Colors.pink[200],number: '34'),
    color_number(color:Colors.deepOrange[200],number: '55'),
    color_number(color:Colors.blue[200],number: '89'),
    color_number(color:Colors.yellow[200],number: '144'),


  ];
}
