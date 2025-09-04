import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:voiceofislam/main.dart';
import 'package:voiceofislam/myColors.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

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
                SizedBox(height: 30.h,),
                Container(
                    height: 250.h,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 5.h),
                    child: Image.asset(
                      'assets/images/namaz_into.png',
                      fit: BoxFit.fill,
                    )),
                Text('right_into'.tr,
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
                  margin: EdgeInsets.only(left: 15.w,right: 15.w),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 90.h),
                    child: Text('right_sunnah'.tr,
                      style: TextStyle(

                        color: MyColors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.normal,


                      ),
                      textAlign: TextAlign.justify,

                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
