// @dart=2.9
import 'dart:async';
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/payment_success.dart';
import 'package:education_app/screens/subpages/start_exam.dart';

import 'exam_page.dart';

class CounterPage extends StatefulWidget {
  final String subject;

  const CounterPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CounterPage> {
  int count=3;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        count--;
      });
      if(count<1){
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ExamPage( subject: "Organic Chemistry (Exam 1)",);
        }));
      }

    });
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
            fontFamily: 'Arial Rounded MT',
            fontSize: 100,
            color: const Color(0xff000000),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
      )
    );
  }
}
