
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:education_app/screens/verification.dart';

class SignupPage extends StatefulWidget {
  @override
  PinPageState createState() => new PinPageState();
}

class PinPageState extends State<SignupPage> {


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
          Row(
            children: [
              SizedBox(width: 30,height: 30,),
              Icon(Icons.arrow_back_ios),
              Spacer(),
              SizedBox(width: 30,height: 130,),
            ],
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [


                    SizedBox(height: 50,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ),

                    Text(
                      'Please enter your information below in\norder to create your account.',
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
                              'First name',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Firstname',
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
                              'Last Name',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Lastname',
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
                              'Phone Number',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Phone Number',
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
                              'Email',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Email',
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




                        ///
                        ///
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            Text(
                              'User Name',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Username',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Password',
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
                              'Confirm Password',
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
                                  EdgeInsets.only(left: 20, top: 0),
                                  hintText: 'Enter Password Again',
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



                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return OtpPage();
                          }));
                        },
                        child:  Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          width: MediaQuery.of(context).size.width*0.7,
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
                              'Sign Up',
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


                    Spacer(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
