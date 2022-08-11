// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/question_answer_page.dart';
import 'package:education_app/screens/subpages/start_exam.dart';

import 'exam_details.dart';

class CourseTabPage extends StatefulWidget {
  final String subject;

  const CourseTabPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CourseTabPage> {
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: 300,
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
              Center(
                child: Stack(
                  children: [
                    Container(
                      height:200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.fitWidth)),
                    ),
                    // Text(
                    //   widget.subject,
                    //   style: TextStyle(
                    //     fontFamily: 'Arial Rounded MT',
                    //     fontSize: 16,
                    //     color:  Colors.white,
                    //     fontWeight: FontWeight.w700,
                    //     height: 2.0833333333333335,
                    //   ),
                    //   textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    //   textAlign: TextAlign.left,
                    // )
                  ],
                ),
              ),

            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: [
              Tab(
                text: "Modules",
              ),
              Tab(
                text: "Questions & Answers",
              ),
              Tab(
                text: "Exams",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children:  <Widget>[
            Container(
              width:  MediaQuery.of(context).size.width,

              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '   Module 1',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.bold,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text(
                        'Introductory Concept &Stereochemistry',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),

                      subtitle: Text(
                        'Incl : 200 previous year question & answers',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 10,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      trailing: Text(
                        'Price : 250 Rs.',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff00acff),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                      leading: Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                      ),
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'Aliphatic& Aromatic Hydrocarbons',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 12,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'Incl : 200 previous year question & answers',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 10,
                        color: const Color(0xff989898),
                        fontWeight: FontWeight.w700,
                        height: 2.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    trailing: Text(
                      'Price : 299 Rs.',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 12,
                        color: const Color(0xff00acff),
                        fontWeight: FontWeight.w700,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    leading: Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            ///QA
            Container(
              width:  MediaQuery.of(context).size.width,

              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return QuestionAnswerPage(subject: "Organic Chemistry (2022-21)",);
                      }));
                    },
                    child: ListTile(
                      title: Text(
                        'Organic Chemistry 2022-21',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),

                      subtitle: Text(
                        'Incl : 200 previous year question & answers',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 10,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      trailing: Text(
                        'Price : 299 Rs.',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff00acff),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                      leading: Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                      ),
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'Statistic & Probabilities (Cont.)',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 12,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'Incl : 200 previous year question & answers',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 10,
                        color: const Color(0xff989898),
                        fontWeight: FontWeight.w700,
                        height: 2.5,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    trailing: Text(
                      'Price : 299 Rs.',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 12,
                        color: const Color(0xff00acff),
                        fontWeight: FontWeight.w700,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    leading: Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width,

              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ExamDetailsPage(subject: "Introductory Concept &Stereochemistry",);
                      }));
                    },
                    child: ListTile(
                      title: Text(
                        'Introductory Concept &Stereochemistry',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),

                      subtitle: Text(
                        'Incl : 200 previous year question & answers',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 10,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      trailing: Text(
                        'Price : 250 Rs.',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 13,
                          color: const Color(0xff00acff),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                      leading: Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return StartExamPage(subject: widget.subject,);
                      }));
                    },
                    child: ListTile(
                      title: Text(
                        'Aliphatic& Aromatic Hydrocarbons',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      subtitle: Text(
                        'Incl : 200 previous year question & answers',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 10,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.5,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      trailing: Text(
                        'Paid  ',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 13,
                          color: const Color(0xff00acff),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                      leading: Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/chemistry.png'),fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
