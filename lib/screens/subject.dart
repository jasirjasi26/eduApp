// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'home_page.dart';

class SubjectPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<SubjectPage> {
  bool all = false;

  bool eng = false;

  bool ma = false;

  bool ch = false;

  bool ph = false;

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
          Row(
            children: [
              SizedBox(
                width: 30,
                height: 30,
              ),
              Icon(Icons.arrow_back_ios),
              Spacer(),
              SizedBox(
                width: 30,
                height: 130,
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Stack(
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
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Select Subjects',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 15,
                              color: const Color(0xff989898),
                              fontWeight: FontWeight.w700,
                              height: 2.0833333333333335,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            children: [
                              CheckboxListTile(
                                title: Text("Select All"), //    <-- label
                                value: all,
                                onChanged: (newValue) {
                                  setState(() {
                                    all=!all;
                                  });
                                  if(all==true){
                                    setState(() {
                                      eng=true;
                                      ma=true;
                                      ch=true;
                                      ph=true;
                                    });
                                  }
                                  if(all==false){
                                    setState(() {
                                      eng=false;
                                      ma=false;
                                      ch=false;
                                      ph=false;
                                    });
                                  }
                                },
                              ),
                              Divider(),
                              CheckboxListTile(
                                title: Text("English"), //    <-- label
                                value: eng,
                                onChanged: (newValue) {
                                  setState(() {
                                    eng=!eng;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                title: Text("Maths"), //    <-- label
                                value: ma,
                                onChanged: (newValue) {
                                  setState(() {
                                    ma=!ma;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                title: Text("Chemistry"), //    <-- label
                                value: ch,
                                onChanged: (newValue) {
                                  setState(() {
                                    ch=!ch;
                                  });
                                },
                              ),
                              CheckboxListTile(
                                title: Text("Physics"), //    <-- label
                                value: ph,
                                onChanged: (newValue) {
                                  setState(() {
                                    ph=!ph;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                          child: Container(
                            alignment: AlignmentDirectional.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 40.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color(0xff00acff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  fontFamily: 'Arial Rounded MT',
                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                  height: 1.6666666666666667,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
