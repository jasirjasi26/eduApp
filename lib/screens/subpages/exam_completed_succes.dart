// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/home_page.dart';

import 'evaluate_exam.dart';

class ExamSuccessPage extends StatefulWidget {
  final String subject;

  const ExamSuccessPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<ExamSuccessPage> {
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
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.3,),
          Container(
            height:150,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/tick.png'),fit: BoxFit.fitWidth)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Exam Finished!',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 22,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.25,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.35,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EvaluateExamPage(subject: "Evaluation",);
                }));
              },
              child:  Container(
                alignment: AlignmentDirectional.bottomCenter,
                width: MediaQuery.of(context).size.width*0.75,
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
                    child:Text(
                      'Evaluate',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    )
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
