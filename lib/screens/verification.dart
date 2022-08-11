// @dart=2.9
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/survay1.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<OtpPage> {

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  String verificationCode;
  String code;
  List<String> userNumbers = []; // Option

  @override
  void initState() {
    onStart();
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
  onStart() async {
    // await FirebaseAuth.instance.verifyPhoneNumber(
    //     phoneNumber: "+918129902988",
    //     verificationCompleted: (PhoneAuthCredential credential) async {
    //       await FirebaseAuth.instance
    //           .signInWithCredential(credential)
    //           .then((value) async {
    //         if (value.user != null) {
    //           // ToastComponent.showDialog("Authentication Success", context,
    //           //     gravity: Toast.CENTER, duration: Toast.LENGTH_LONG);
    //
    //         } else {
    //           FlutterFlexibleToast.showToast(
    //               message: "Invalid OTP",
    //               toastGravity: ToastGravity.BOTTOM,
    //               icon: ICON.ERROR,
    //               radius: 50,
    //               elevation: 10,
    //               imageSize: 15,
    //               textColor: Colors.white,
    //               backgroundColor: Colors.black,
    //               timeInSeconds: 2);
    //         }
    //       });
    //     },
    //     verificationFailed: (FirebaseAuthException e) {
    //       print(e.message);
    //     },
    //     codeSent: (String verficationID, int resendToken) {
    //       setState(() {
    //         verificationCode = verficationID;
    //         //isLoading=false;
    //       });
    //       FlutterFlexibleToast.showToast(
    //           message: "OTP Sent",
    //           toastGravity: ToastGravity.BOTTOM,
    //           icon: ICON.SUCCESS,
    //           radius: 50,
    //           elevation: 10,
    //           imageSize: 15,
    //           textColor: Colors.white,
    //           backgroundColor: Colors.black,
    //           timeInSeconds: 2);
    //     },
    //     codeAutoRetrievalTimeout: (String verificationID) {
    //       setState(() {
    //         verificationCode = verificationID;
    //       });
    //     },
    //     timeout: Duration(seconds: 120));
  }


  // Future<void> _showSnackBar(String pin) async {
  //
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              SizedBox(width: 30,height: 30,),
              Icon(Icons.arrow_back_ios),
              Spacer(),
              SizedBox(width: 30,height: 130,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),

                    Text('Verification',
                      style: new TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Please enter the code we sent to\n           +918129902988',
                      style: new TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .8,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: PinPut(
                                //obscureText: "*",
                                fieldsCount: 4,
                                withCursor: true,
                                textStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
                                eachFieldWidth: 50.0,
                                eachFieldHeight: 50.0,
                                // onSubmit: (String pin) => _showSnackBar(pin),
                                focusNode: _pinPutFocusNode,
                                controller: _pinPutController,
                                submittedFieldDecoration: pinPutDecoration,
                                selectedFieldDecoration: pinPutDecoration,
                                followingFieldDecoration: pinPutDecoration,
                                pinAnimationType: PinAnimationType.fade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 250 ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/otp.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SurveyPage();
                          }));
                        },
                        child:  Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          width: MediaQuery.of(context).size.width*0.8,
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
                              'Verify',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 16,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                height: 1.6666666666666667,
                              ),
                              textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),

                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  "Don't receive the code ? ",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),

                                Text(
                                  "Resend ",
                                  style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 14,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),

                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
