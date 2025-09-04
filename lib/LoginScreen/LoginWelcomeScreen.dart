import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/FirebaseServices/FirebaseServices.dart';
import 'package:voiceofislam/IntroductionScreen/intruduction_screen.dart';
import 'package:voiceofislam/LoginScreen/ProfileInformationScreen.dart';
import 'package:voiceofislam/LoginScreen/SignUpScreen.dart';

import '../myColors.dart';
import 'SignInScreen.dart';

class Loginwelcomescreen extends StatefulWidget {
  const Loginwelcomescreen({super.key});

  @override
  State<Loginwelcomescreen> createState() => _LoginwelcomescreenState();
}

class _LoginwelcomescreenState extends State<Loginwelcomescreen> {
  bool _isloading = false;

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
            child: Container(

              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.only(top: 50.h,left: 20.w,right: 20.w),
                    child: Center(
                        child: Text('app_spech'.tr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: MyColors.white,
                          ),
                          textAlign: TextAlign.center,

                        )

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Center(
                        child: Image.asset('assets/images/logo.png',height: 140.h,width: 140.w,)),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,  // Aligns both texts vertically centered
                    children: [
                      Baseline(
                        baseline: 30.h,  // Set the baseline height (adjust this as needed)
                        baselineType: TextBaseline.alphabetic,
                        child: Center(
                          child: Text(
                            'Welcome to',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: MyColors.deep_blue,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Baseline(
                        baseline: 30.h,  // Use the same baseline height to align both texts
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          'Voice of Islam',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),


                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.off_white,

                    ),
                    height: 1.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                  ),

                  //ElevatedButton
                  Padding(padding: EdgeInsets.only(top:40.h,bottom: 10.h),
                    child: Center(
                      child: SizedBox(

                        width: 200.w,

                        child:ElevatedButton(
                            onPressed: (){Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context)=>Signinscreen()));
                            },

                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 40.w),
                                elevation: 6,
                                backgroundColor: MyColors.blue_grey,
                                shadowColor: MyColors.white,
                                side: BorderSide(
                                    color: MyColors.white,
                                    width: 1.w
                                )
                            ),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                // Space between icon and text
                                Center(
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: MyColors.white, // Text color
                                    ),
                                  ),
                                ),
                              ],
                            )) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h,),

                  Center(child: Text('or Sign Up',
                    style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.normal,
                    color: MyColors.white),),),
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                      color: MyColors.off_white,

                    ),
                    height: 1.h,
                    width: 150.w,
                  ),

                  SizedBox(height: 20.h,),


                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Center(
                      child: SizedBox(

                        width: 220.w, // Set the button width
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, 
                            MaterialPageRoute(builder: (context)=>Signupscreen()));
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: MyColors.blue_grey, // Background color
                            side: BorderSide(color: MyColors.white, width: 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),

                            ),
                            elevation: 6,
                            shadowColor: MyColors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                          'assets/images/email.png', // Replace with your icon asset path
                          height: 28.h, // Icon size
                          width: 28.w,
                        ),
                           SizedBox(width: 10.w), // Space between icon and text
                              Text(
                                'with E-mail',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: MyColors.white, // Text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  //Google SignIn
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Center(
                      child: SizedBox(

                        width: 220.w, // Set the button width
                        child: OutlinedButton(
                          onPressed: () async {

                            CircularProgressIndicator (
                              color: MyColors.white,
                              strokeWidth: 2.w,
                            );

                            User? user = await FirebaseAuthService().signInWithGoogle();

                            final prefs = await SharedPreferences.getInstance();

                            if(user != null)
                              {
                                String user_id = user.uid;
                                String? userEmail = user.email; // Email
                                String? userName = user.displayName; // Display name
                                String? userProfileImage = user.photoURL; // Profile image URL

                                await prefs.setString('user_id', user_id);

                                if (userEmail != null)
                                  {
                                    await prefs.setString('user_mail', userEmail);
                                  }
                                if (userName != null){
                                  await prefs.setString('name', userName);
                                }
                                /*if (userProfileImage != null){
                                  await prefs.setString('profile_image', userProfileImage);
                                }*/

                                //print("User ID saved: $user_id");

                                Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context)=>Profileinformationscreen()));

                              } else {
                              print("Sign in failed.");
                            }
                          },


                          style: OutlinedButton.styleFrom(
                              backgroundColor: MyColors.blue_grey, // Background color
                              side: BorderSide(color: MyColors.white, width: 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),

                              ),
                              elevation: 6,
                              shadowColor: MyColors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png', // Replace with your icon asset path
                                height: 28.h, // Icon size
                                width: 28.w,
                              ),
                              SizedBox(width: 10.w), // Space between icon and text
                              Text(
                                'with Google',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: MyColors.white, // Text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  //Guest Login
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Center(
                      child: SizedBox(

                        width: 220.w, // Set the button width
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>introduction_screen()));
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: MyColors.blue_grey, // Background color
                              side: BorderSide(color: MyColors.white, width: 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),

                              ),
                              elevation: 6,
                              shadowColor: MyColors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Center(


                                  child: Icon(Icons.face,color: MyColors.deep_blue,size: 30.h,),),
                              SizedBox(width: 10.w), // Space between icon and text
                              Text(
                                'with Guest',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: MyColors.white, // Text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40.h),











                  /*SizedBox(height: 40.h,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png',height: 40.h,width: 40.w,),
                      SizedBox(width: 15.w,),
                      Image.asset('assets/images/facebook.png',height: 40.h,width: 40.w,),
                      SizedBox(width: 15.w,),
                      Image.asset('assets/images/apple.png',height: 40.h,width: 40.w,),
                    ],
                  )*/


                ],
              ),
            ),
          ),

        )
    );
  }
}
