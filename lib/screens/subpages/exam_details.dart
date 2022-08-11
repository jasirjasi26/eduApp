// @dart=2.9
import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/subpages/payment_options_page.dart';

class ExamDetailsPage extends StatefulWidget {
  final String subject;

  const ExamDetailsPage({Key key, this.subject}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<ExamDetailsPage> {
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
                  "Exam",
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
            Container(
              height:200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/biology.png'),fit: BoxFit.fitWidth)),
            ),

          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  widget.subject,
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.bold,
                    height: 1.6666666666666667,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Text(
                '250 Rs.',
                style: TextStyle(
                  fontFamily: 'Arial Rounded MT',
                  fontSize: 16,
                  color: const Color(0xff00acff),
                  fontWeight: FontWeight.bold,
                  height: 2.0833333333333335,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '    Exam Syllabus Details :',
                  style: TextStyle(
                    fontFamily: 'Arial Rounded MT',
                    fontSize: 18,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    height: 1.6666666666666667,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width *0.85,
              child: Center(
                child: Text(
                  'Inductive effect, electromeric effect, conjugation, resonance and resonance energy, hyperconjugation.Homolytic and heterolytic bond breaking,Electrophiles and nucleophiles; carbocations, carbanions and radicals (stability andreactivity).Stereochemistry of carbon compounds: Different types of isomerism,enatiomers and diastereoisomers;Fischer,Sawhorse, and Newman Projection formulae of simple molecules containing one and twoasymmetric carbon atom (s).Asymmetric carbon atom, chirality, optical activity.Elements ofsymmetry, E and Z nomenclature, D and Lnomenclature (for carbohydrates and aminoacids only). R and S nomenclature of one stereogenic centre. ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    height: 2.0833333333333335,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),

          SizedBox(height: 50,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentDetailsPage(subject: "Introductory Concept &Stereochemistry",);
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
                    'Proceed to Checkout',
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
