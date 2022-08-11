// @dart=2.9
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/survay1.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'landing_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<SplashPage> {


  @override
  void initState() {

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom,SystemUiOverlay.top]);
    // Timer.periodic(Duration(seconds: 2), (Timer timer) {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) {
    //     return LandingPage();
    //   }));
    // });
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LandingPage()));
    });
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
      backgroundColor: const Color(0xff00acff),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
          ),
        ],
      ),
    );
  }
}
