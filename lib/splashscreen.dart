import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/HomeScreen/HomeScreen.dart';
import 'package:voiceofislam/language/LanguageSelectionScreen.dart';
import 'package:voiceofislam/MyHomePage.dart';
import 'package:voiceofislam/introductionScreen/intruduction_screen.dart';
import 'package:voiceofislam/language/language.dart';
import 'package:voiceofislam/main.dart';

import 'myColors.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {

  get clild => null;







  @override
  void initState()
  {
    super.initState();
    _checkuserSession();

  }

  Future<void> _checkuserSession() async{
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    String? userId = preferences.getString('user_id');
    if(userId != null){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>Homescreen()));
    }else{
      Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(
          context,MaterialPageRoute(builder: (context)=>Languageselectionscreen())));
    }

  }
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.blue_grey,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MyColors.blue_grey,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.blue_grey,

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 80.h,),

              Text('app_spech'.tr,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
                color: MyColors.white,


              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h,),

              Image.asset(
                "assets/images/logo.png",
                height: 300.h,
                width: 300.w,
              ),
              SizedBox(height: 20.h,),

              // App name (translated with GetX)
              Text(
                'app_name'.tr,  // Translatable string
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: MyColors.white,
                ),
              ),
              SizedBox(height: 30.h,),

              SizedBox(
                height: 30.h, // Set the size to 30
                width: 30.w,
                child: CircularProgressIndicator(
                  color: Colors.white, // Set the color to white
                  strokeWidth: 4.r, // Optional: Adjust the thickness of the indicator
                ),
              )


            ],
          ),
        ),


      ),
    );
  }
}




/*
class SplashScreen extends StatelessWidget{
  get child => null;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.grey_white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(


      child: Scaffold(
        backgroundColor: MyColors.grey_white,


      ),

    );
  }


}*/
