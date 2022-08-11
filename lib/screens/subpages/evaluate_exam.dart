// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/home_page.dart';
import 'package:education_app/screens/subpages/payment_success.dart';

import 'counter.dart';

class EvaluateExamPage extends StatefulWidget {
  final String subject;

  const EvaluateExamPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<EvaluateExamPage> {

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        flexibleSpace: Column(
          children: [
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
                Text(
                  widget.subject,
                  style: new TextStyle(
                      fontFamily: 'PoppinsBold',
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                SizedBox(
                  width: 30,
                  height: 130,
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'Subject :-  ',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  widget.subject,
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'Total Exam Time :-  ',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  ' 2:30hrs',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'No of Questions :- ',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '20',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'No of Questions Answered :- ',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '20',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'Total Marks :- ',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '90/100',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.5,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
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
                      'Done',
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
