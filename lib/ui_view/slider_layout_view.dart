import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:education_app/constants/constants.dart';
import 'package:education_app/model/slider.dart';
import 'package:education_app/screens/signin.dart';
import 'package:education_app/widgets/slide_dots.dart';
import 'package:education_app/widgets/slide_items/slide_item.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    // Timer.periodic(Duration(seconds: 5), (Timer timer) {
    //   if (_currentPage < 2) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: sliderArrayList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.0, top: 50.0),
                        child: Text(
                          Constants.SKIP,
                          style: TextStyle(
                            fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    _currentPage ==2 ? Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: (){
                        //  _pageController.nextPage(duration:Duration(milliseconds: 500),curve: );
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return SigninPage();
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
                              'Get Started',
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
                    ) : Container(),

                    Container(
                      alignment: AlignmentDirectional.bottomCenter,
                      margin: EdgeInsets.only(bottom: 120.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < sliderArrayList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      );
}
