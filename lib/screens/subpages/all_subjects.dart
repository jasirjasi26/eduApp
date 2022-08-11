// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/subject_tab_view.dart';

class AllSubPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<AllSubPage> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom,SystemUiOverlay.top]);
    super.initState();
  }

  @override
  void dispose() {
    //before going to other screen show statusbar
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [

                Center(
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Text(
                      'Subject',
                      style: new TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                  ]),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SubTabPage(subject:"Maths");
                        }));
                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width * 0.2,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/Maths.png'))),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Maths',
                                style: TextStyle(
                                  fontFamily: 'Arial Rounded MT',
                                  fontSize: 12,
                                  color: const Color(0xff989898),
                                  fontWeight: FontWeight.w700,
                                  height: 2.0833333333333335,
                                ),
                                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SubTabPage(subject:"Chemistry");
                        }));
                      },
                      child:  Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width * 0.2,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/basic-chemistry.png'))),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Chemistry',
                                style: TextStyle(
                                  fontFamily: 'Arial Rounded MT',
                                  fontSize: 12,
                                  color: const Color(0xff989898),
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.2,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/physics.png'))),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 12,
                                color: const Color(0xff989898),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width * 0.2,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/biology.png'))),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Biology',
                                style: TextStyle(
                                  fontFamily: 'Arial Rounded MT',
                                  fontSize: 12,
                                  color: const Color(0xff989898),
                                  fontWeight: FontWeight.w700,
                                  height: 2.0833333333333335,
                                ),
                                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),



                    SizedBox(width: 5,),
                  ],
                ),
              ],
            )
          ),


          Row(
            children: [
              SizedBox(
                width: 30,
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios)),
              Spacer(),
              SizedBox(
                width: 30,
                height: 130,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
