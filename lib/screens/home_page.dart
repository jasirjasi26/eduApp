// @dart=2.9
import 'dart:convert';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/all_subjects.dart';

class HomePage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: Icon(Icons.menu,color: Colors.black,),
        flexibleSpace: Center(
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  _key.currentState.openDrawer(); //<-- SEE HERE
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 45,
                  // padding: EdgeInsets.only(bottom: 7, left: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(6, 3),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: TextFormField(
                      // controller: database,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, top: 13),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 14,
                          //color:  Colors.black,
                        ),
                        prefixIcon: Icon(Icons.search),
                        //filled: true,
                        border: InputBorder.none,
                        filled: false,
                        isDense: false,
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_alert,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
               decoration: BoxDecoration(
                 color: const Color(0xfff2f5f7),
                 boxShadow: [
                   BoxShadow(
                     color: const Color(0x29000000),
                     offset: Offset(0, 6),
                     blurRadius: 12,
                   ),
                 ],
               ),
              child: Container(
                height: 80,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Icon(Icons.person,size: 40,),
                        ),
                        Text(
                          'Jone Doe',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            //height: 2.0833333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    Text(
                      '+918129902988        ',
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
                    Text(
                      'jonedoe3456@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 12,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 2.0833333333333335,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              )
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user,
              ),
              title:  Text('My Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.library_books,
              ),
              title: const Text('Order History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.download_outlined,
              ),
              title: const Text('Downloads'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wallet_giftcard,
              ),
              title: const Text('Wallets'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
              ),
              title: const Text('Refer & Earn'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
            ),
            items: [1,3, 4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(

                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(15.0),),
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.3,
                        width: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Group ${i}.png'))),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Main Categories',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.6666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AllSubPage();
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
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/subject.png'),
                                        fit: BoxFit.scaleDown)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Subject',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT',
                            fontSize: 12,
                            color: const Color(0xff989898),
                            fontWeight: FontWeight.w700,
                            height: 2.0833333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/questions.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Questions Paper\n& Answer Keys',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/ebook.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'E - Books ',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),

          ///second row
          ///
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/examhall.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Exam Hall',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 2.0833333333333335,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      )
                    ],
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/updates.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Latest News &\nUpdates',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clarify.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Clarify Yours \nDoubts',
                        style: TextStyle(
                          fontFamily: 'Arial Rounded MT',
                          fontSize: 12,
                          color: const Color(0xff989898),
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Packages & Price',
              style: TextStyle(
                fontFamily: 'Arial Rounded MT',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.6666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'Organic Chemistry Vol 1',
                    style: TextStyle(
                      fontFamily: 'Arial Rounded MT',
                      fontSize: 12,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 2.0833333333333335,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
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
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
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
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                  leading: Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/chemistry.png'),
                            fit: BoxFit.cover)),
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
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
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
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
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
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                  leading: Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/chemistry.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
