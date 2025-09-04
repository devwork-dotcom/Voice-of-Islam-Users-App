import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:voiceofislam/main.dart';
import 'package:voiceofislam/myColors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.blue_grey,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MyColors.blue_grey,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
        child:Scaffold(
          backgroundColor: MyColors.blue_grey,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 250.h,

                    width: 300.w,
                    margin: EdgeInsets.symmetric(horizontal: 5.h),
                    child: Image.asset(
                      'assets/images/quran_learing_intro.png',
                      fit: BoxFit.fill,
                      )),

                Text('quran_study'.tr,
                style: TextStyle(

                    color: MyColors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,


                ),
                  textAlign: TextAlign.center,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  color: MyColors.off_white,
                  height: 1.h,
                ),

                SizedBox(height: 10.h,),

                Container(
                  margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 50.h),
                  child: Text('quran_intro'.tr,
                    style: TextStyle(

                      color: MyColors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,


                    ),
                    textAlign: TextAlign.justify,

                  ),
                ),
                SizedBox(height: 30.h,)
              ],
            ),
          ),
        )
    );
  }
}
