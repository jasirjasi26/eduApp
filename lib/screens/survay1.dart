// @dart=2.9
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subject.dart';
import 'package:pinput/pin_put/pin_put.dart';

class SurveyPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<SurveyPage> {
  String verificationCode;
  String code;
  List<String> userNumbers = []; // Option
  final List<String> _dropdownValues = [
    "CBSE",
    "ICSE",
    "STATE",
    "OTHER",
  ];
  final List<String> _dropdownValues1 = [
    "9",
    "10",
    "11",
    "12",
    "UPSC",
    "PSC",
    "BANK"
  ];

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
                        'Survey',
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
                            'Select Curriculam',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 14,
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
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
                          // padding: EdgeInsets.only(bottom: 7, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                          ),
                          child: DropdownButton(
                            items: _dropdownValues
                                .map((value) => DropdownMenuItem(
                              child: Text(value),
                              value: value,
                            ))
                                .toList(),
                            onChanged: (String value) {},
                            isExpanded: true,
                            isDense: false,
                            value: _dropdownValues.first,
                          ),
                        ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Select Course',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 14,
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

                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
                          // padding: EdgeInsets.only(bottom: 7, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                          ),
                          child: DropdownButton(
                            items: _dropdownValues1
                                .map((value) => DropdownMenuItem(
                              child: Text(value),
                              value: value,
                            ))
                                .toList(),
                            onChanged: (String value) {},
                            isExpanded: true,
                            isDense: true,
                            value: _dropdownValues1.first,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SubjectPage();
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
                                'Next',
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
