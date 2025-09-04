import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voiceofislam/HomeScreen/HomeScreen.dart';
import 'package:voiceofislam/MyHomePage.dart';
import 'package:voiceofislam/introductionScreen/Screen1.dart';
import 'package:voiceofislam/introductionScreen/Screen2.dart';
import 'package:voiceofislam/introductionScreen/Screen3.dart';
import 'package:voiceofislam/introductionScreen/Screen5.dart';
import 'package:voiceofislam/introductionScreen/Screen6.dart';

import '../myColors.dart';
import 'Screen4.dart';

class introduction_screen extends StatefulWidget {

   introduction_screen({super.key});

  @override
  State<introduction_screen> createState() => _introduction_screenState();
}

class _introduction_screenState extends State<introduction_screen> {
  PageController pageController = PageController();

  List<int> visitedPages = [];
  String buttonText = "Skip";
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    visitedPages.add(currentPageIndex); // Add the initial page to stack
  }

  void _onPageChanged(int index){

    setState(() {

      if (!visitedPages.contains(index)) {
        visitedPages.add(index); // Add page to stack if not already visited
      }
      currentPageIndex=index;
      if(index == 5){
        buttonText = "Finish";
      }else{
        buttonText="Skip";
      }
    });
  }

  Future<bool> _onWillPop() async {

    if(currentPageIndex ==0){
      exit(0);
    }
    else if (visitedPages.length > 1) {
      // Pop the last visited page from stack and navigate to it
      visitedPages.removeLast();
      int previousPage = visitedPages.last;
      pageController.jumpToPage(previousPage);
      return false; // Prevent default back button behavior
    }
    return true; // Exit the app if no more pages in stack
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.blue_grey,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MyColors.blue_grey,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(

        child: Scaffold(
          backgroundColor: MyColors.grey_white,

          body:Stack(
            children: [
              PageView(
                controller: pageController,
              onPageChanged: _onPageChanged,
              children: [

                Screen1(),
                Screen2(),
                Screen3(),
                Screen4(),
                Screen5(),
                Screen6(),

            ],


          ) ,
              Container(

                alignment: Alignment(0, 0.85.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                      onTap: (){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                      },
                      child: Text(buttonText,
                        style: TextStyle(fontSize: 15.sp,
                            color: MyColors.white),),
                    ),
                    SmoothPageIndicator(
                        controller: pageController,
                        count: 6,
                      effect: WormEffect(
                        activeDotColor: MyColors.white,
                        dotColor: MyColors.off_white

                      ),
                    ),
                    currentPageIndex == 5 ? SizedBox() : GestureDetector(

                      onTap: (){
                        pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                      },
                      child: Text('Next',

                      style: TextStyle(fontSize: 15.sp,
                      color: MyColors.white),
                      ),



                    )
                  ],
                ),
              )
        ],
        ),
      )
      ),
    );
  }
}
