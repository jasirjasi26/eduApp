// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/payment_success.dart';

class PaymentDetailsPage extends StatefulWidget {
  final String subject;

  const PaymentDetailsPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<PaymentDetailsPage> {
  String payment = '1';

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
                  "Payment Method",
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
          ListTile(
            leading: Radio<String>(
              value: '1',
              groupValue: payment,
              onChanged: (value) {
                setState(() {
                  payment = value;
                });
              },
            ),
            title: const Text('Debit / Credit Card'),
          ),
          ListTile(
            leading: Radio<String>(
              value: '2',
              groupValue: payment,
              onChanged: (value) {
                setState(() {
                  payment = value;
                });
              },
            ),
            title: const Text('UPI ID / Net Banking'),
          ),
          ListTile(
            leading: Radio<String>(
              value: '3',
              groupValue: payment,
              onChanged: (value) {
                setState(() {
                  payment = value;
                });
              },
            ),
            title: const Text(' Add UPI ID / Net Banking'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.45,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentSuccessPage(subject: "",);
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
                      'Continue',
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
