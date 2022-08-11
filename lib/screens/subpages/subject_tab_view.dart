// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'course_tab_view.dart';

class SubTabPage extends StatefulWidget {
  final subject;

  const SubTabPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<SubTabPage> {
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
          toolbarHeight: 120,
          flexibleSpace: Row(
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
              SizedBox(
                width: 30,
                height: 130,
              ),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            // indicator: BoxDecoration(
            //     color: Colors.cyan,
            //     // image: DecorationImage(
            //     //   image: AssetImage("assets/images/flutter_stack.jpg"),
            //     //   fit: BoxFit.cover,
            //     // )
            // ),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: [
              Tab(
                text: "Chapters",
              ),
              Tab(
                text: "Questions & Answers",
              ),
              Tab(
                text: "Recourse",
              ),
            ],
          ),
          title: Text(
            widget.subject,
            style: new TextStyle(
                fontFamily: 'PoppinsBold',
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: TabBarView(
          children:  <Widget>[
            Container(
              width:  MediaQuery.of(context).size.width,

              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CourseTabPage(subject: "Organic Chemistry",);
                      }));
                    },
                    child: ListTile(
                      title: Text(
                        'Organic Chemistry Vol 1',
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
                        return CourseTabPage(subject: "Organic Chemistry",);
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
            Center(
              child: Text("..."),
            ),
          ],
        ),
      ),
    );
  }
}
