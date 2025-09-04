import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/DrawerScreen/SettingsScreen/SettingsFeedback.dart';
import 'package:voiceofislam/DrawerScreen/SettingsScreen/SettingsLanguage.dart';
import 'package:voiceofislam/DrawerScreen/SettingsScreen/SettingsProfile.dart';
import 'package:voiceofislam/DrawerScreen/SettingsScreen/SettingsUpdate.dart';

import '../FirebaseServices/FirebaseServices.dart';
import '../HomeScreen/HomeScreen.dart';
import '../myColors.dart';

class Settingfragment extends StatefulWidget {
  const Settingfragment({super.key});

  @override
  State<Settingfragment> createState() => _SettingfragmentState();
}

class _SettingfragmentState extends State<Settingfragment> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.blue_grey,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: MyColors.blue_grey,
      systemNavigationBarIconBrightness: Brightness.light,

    ));
    return SafeArea(child:

    WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        return false;
      },
      child: Scaffold(
        backgroundColor: MyColors.blue_grey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              SizedBox(height: 150.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  //height: 42.h,
                  //width: 160.w,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>Settingsprofile()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1,), // Offset for the shadow
                          ),
                        ],

                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:  12.w,right: 12.w,top: 7.h,bottom: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.person,color: MyColors.white,size: 20.w,),
                                SizedBox(width: 7.w,),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right,color: MyColors.white,size: 28.w,),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  //height: 42.h,
                  //width: 160.w,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>Settingsupdate()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1,), // Offset for the shadow
                          ),
                        ],

                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:  12.w,right: 12.w,top: 7.h,bottom: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.update,color: MyColors.white,size: 20.w,),
                                SizedBox(width: 7.w,),
                                Text(
                                  'Update',
                                  style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right,color: MyColors.white,size: 28.w,),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  //height: 42.h,
                  //width: 160.w,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>Settingslanguage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1,), // Offset for the shadow
                          ),
                        ],

                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:  12.w,right: 12.w,top: 7.h,bottom: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.language,color: MyColors.white,size: 20.w,),
                                SizedBox(width: 7.w,),
                                Text(
                                  'Language',
                                  style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right,color: MyColors.white,size: 28.w,),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  //height: 42.h,
                  //width: 160.w,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>Settingsfeedback()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1,), // Offset for the shadow
                          ),
                        ],

                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:  12.w,right: 12.w,top: 7.h,bottom: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.feedback,color: MyColors.white,size: 20.w,),
                                SizedBox(width: 7.w,),
                                Text(
                                  'Feedback',
                                  style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right,color: MyColors.white,size: 28.w,),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  //height: 42.h,
                  //width: 160.w,
                  child: GestureDetector(
                    onTap: () async{

                      FirebaseAuthService authServices = FirebaseAuthService();

                      await authServices.sign_Out();

                      await authServices.google_signout();

                      SharedPreferences pref = await SharedPreferences.getInstance();
                      await pref.remove('user_id');

                      exit(0);

                    },

                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1,), // Offset for the shadow
                          ),
                        ],

                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:  12.w,right: 12.w,top: 7.h,bottom: 7.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.logout,color: MyColors.white,size: 20.w,),
                                SizedBox(width: 7.w,),
                                Text(
                                  'Log out',
                                  style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right,color: MyColors.white,size: 28.w,),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100.h,),


            ],
          ),
        ),
      ),
    )
    );
  }
}
