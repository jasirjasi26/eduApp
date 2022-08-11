// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/payment_options_page.dart';

class QuestionAnswerPage extends StatefulWidget {
  final String subject;

  const QuestionAnswerPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<QuestionAnswerPage> {
  List<String> question = [
    '1. Arrange the following in the increasing order of their property indicated (any 2):',
    '2. Convert the following'
  ];
  List<String> option = [
    'a. Benzoic acid, Phenol, Picric acid, Salicylic acid (pka values).\nb. Acetaldehyde, Acetone, Methyl tert butyl ketone \n(reactivity towards NH2OH).\nc. ethanol, ethanoic acid, benzoic acid (boiling point) ',
    'a. Phenol to N-phenylethanamide.\nb. Chloroethane to methanamine.\nc. Propanenitrile to ethanol. '
  ];
  List<String> answer = [
    'a. Picric acid < Salicylic acid < Benzoic acid \n<  Phenol\nb.  Methyl tert butyl ketone < Acetone \n< Acetaldehyde\nc. ethanol < ethanoic acid < benzoic acid \n',
    'a. Phenol to N-phenylethanamide.'
  ];
  List<String> marks = ['(1*2=2)', '(1*2=2)'];
  int count = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom, SystemUiOverlay.top]);
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
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: 100,
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
        body: Container(
          // Use ListView.builder
          child: ListView.builder(
              // the number of items in the list
              itemCount: 1,
              // display each item of the product list
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Questions",
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 20,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              height: 1.6666666666666667,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              question[count],
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            )),
                      ],
                    ),
                    Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text(
                            option[count],
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              height: 2.0833333333333335,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          )),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            marks[count],
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 13,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              height: 2.0833333333333335,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        color: const Color(0xfff2f5f7),
                      ),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Solution :',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              answer[count],
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (count < question.length-1) {
                            setState(() {
                              count++;
                            });
                          }
                        },
                        child: Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          width: MediaQuery.of(context).size.width * 0.75,
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
                              fontSize: 15,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              height: 1.6666666666666667,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ));
  }
}
