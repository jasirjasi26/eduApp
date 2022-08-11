
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/signup.dart';
import 'package:education_app/screens/survay1.dart';

class SigninPage extends StatefulWidget {
  @override
  PinPageState createState() => new PinPageState();
}

class PinPageState extends State<SigninPage> {

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
    return new Scaffold(
      body: Stack(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SignupPage();
                            }));
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontFamily: 'Arial Rounded MT',
                              fontSize: 15,
                              color:  Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 2.0833333333333335,
                              decoration: TextDecoration.underline,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(width: 30,height: 30,),
                      ],
                    ),

                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Log In",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    ),

                    Text(
                      'Please enter your information below in\norder to login to your account.',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 15,
                        color: const Color(0xff989898),
                        fontWeight: FontWeight.w700,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            Text(
                              'User name',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 13,
                                color: const Color(0xff989898),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 50,
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
                                  contentPadding:
                                  EdgeInsets.only(left: 20, top: 15),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 25.0,
                                    color: Colors.grey,
                                  ),
                                  hintText: 'John Doe',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    //color:  Colors.black,
                                  ),
                                  //filled: true,
                                  border: InputBorder.none,
                                  filled: false,
                                  isDense: false,
                                )),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            Text(
                              'Password',
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT',
                                fontSize: 13,
                                color: const Color(0xff989898),
                                fontWeight: FontWeight.w700,
                                height: 2.0833333333333335,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 50,
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
                                  contentPadding:
                                  EdgeInsets.only(left: 20, top: 15),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.grey,
                                  ),
                                  hintText: '******',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    //color:  Colors.black,
                                  ),
                                  //filled: true,
                                  border: InputBorder.none,
                                  filled: false,
                                  isDense: false,
                                )),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Arial Rounded MT',
                            fontSize: 13,
                            color: const Color(0xff989898),
                            fontWeight: FontWeight.w700,
                            height: 2.0833333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 30,height: 30,),
                      ],
                    ),

                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: (){
                        //  _pageController.nextPage(duration:Duration(milliseconds: 500),curve: );
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SurveyPage();
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
                          child: Text(
                            'Log In',
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

                    Text(
                      'Or use social media account for login',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 15,
                        color: const Color(0xff989898),
                        fontWeight: FontWeight.w700,
                        height: 1.6666666666666667,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () async {
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .75,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(width: 1.0, color: const Color(0xffcfcfcf)),
                          boxShadow: [
                          ],
                        ),
                        child:  Row(
                          children: [
                            Spacer(),
                            Container(
                              width: 50,
                              height: 30 ,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/google.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Continue with Google"),
                            Spacer(),
                          ],
                        ),

                      ),
                    ),
                    Spacer(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
