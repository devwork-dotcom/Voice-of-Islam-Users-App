import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/IntroductionScreen/intruduction_screen.dart';
import 'package:voiceofislam/LoginScreen/LoginWelcomeScreen.dart';
import 'package:voiceofislam/LoginScreen/ProfileInformationScreen.dart';
import 'package:voiceofislam/LoginScreen/SignUpScreen.dart';
import 'package:voiceofislam/myColors.dart';

import '../FirebaseServices/FirebaseServices.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final _emailController = TextEditingController(); // Controller for email
  final _passwordController = TextEditingController(); // Controller for password
  bool _isPasswordVisible = false; // Track password visibility

  FirebaseAuthService _authService = FirebaseAuthService(); // Firebase auth instance

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Function to handle sign in with email and password
  void _handleSignIn() async {
    if (_formKey.currentState!.validate()) {

      final prefs = await SharedPreferences.getInstance();

      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      User? user = await _authService.signInWithEmail(email, password);
      if (user != null) {
        String user_id = user.uid;
        await prefs.setString('user_id', user_id);
        // Navigate to the next page if sign-in is successful
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Profileinformationscreen()));
      } else {
        // Show error message if sign-in fails
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Wrong email and password try.')),
        );
      }
    }
  }

  // Function to handle forget password and send reset email
  void _handleForgotPassword() async {
    String email = _emailController.text.trim();
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your email first.')),
      );
      return;
    }
    try {
      await _authService.sendPasswordResetEmail(email);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password reset email sent to $email. Please check your email')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send reset email. Try again.')),
      );
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

          body: WillPopScope(
            onWillPop: () async{

              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>Loginwelcomescreen()));
              return true;
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(

                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      Padding(padding: EdgeInsets.only(top: 60.h),

                        child: Center(
                          child: Image.asset('assets/images/logo.png',height: 100.h,width: 100.w,),
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(top: 1.h),

                        child: Center(
                          child: Text('SignIn Form',
                          style: TextStyle(
                            fontSize: 40.sp,fontWeight: FontWeight.bold,
                            color: MyColors.white,
                          ),),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        decoration: BoxDecoration(
                          color: MyColors.off_white,
                        ),
                        height: 1.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 50.h,left: 20.w,right: 20.w),
                        child: Center(
                          child: Column(
                            children: [
                              // Email Input Field
                              SizedBox(
                                //height: 50.h, // Set the width of the input field
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      color: MyColors.deep_blue,
                                      // Label color
                                    ),
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(color: MyColors.off_white),
                                    prefixIcon: Icon(Icons.email, color: MyColors.off_white), // Icon color
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue, // Border color when not focused
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue, // Border color when focused
                                        width: 2.0.w,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    fillColor: MyColors.white,
                                    filled: true,
                                    errorStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: MyColors.deep_blue,
                                      height: 0.5.h, // Adjust this value for spacing
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: MyColors.deep_blue, // Text color
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                  cursorColor: MyColors.blue_grey, // Cursor color
                                ),
                              ),


                              SizedBox(height: 20.h), // Space between fields

                              // Password Input Field
                              SizedBox(
                                //height: 50.h, // Set the width of the input field
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      color: MyColors.deep_blue, // Label color
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(color: MyColors.off_white),
                                    prefixIcon: Icon(Icons.lock, color: MyColors.off_white), // Icon color

                                    suffixIcon: IconButton(onPressed: (){
                                      setState(() {
                                        _isPasswordVisible=!_isPasswordVisible;
                                      });
                                    },
                                        icon: Icon(_isPasswordVisible?Icons.visibility:Icons.visibility_off),
                                      color: MyColors.off_white,
                                    ),


                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue, // Border color when not focused
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue, // Border color when focused
                                        width: 2.0.w,
                                      ),
                                    ),

                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    fillColor: MyColors.white,
                                    filled: true,
                                    errorStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.red,
                                      height: 0.5.h, // Adjust this value for spacing
                                    ),

                                  ),
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: MyColors.deep_blue, // Text color
                                  ),
                                  obscureText: !_isPasswordVisible, // Hide password input
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                  cursorColor: MyColors.blue_grey, // Cursor color
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  onTap: _handleForgotPassword,
                                  child: Text('forget_pass'.tr,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17.sp,
                                      color: MyColors.white

                                    ),

                                  ),
                                ),
                              ),

                              SizedBox(height: 30.h,),


                              //Elevated Button
                              SizedBox(


                                width: 200.w,

                                child:ElevatedButton(
                                    onPressed: _handleSignIn,

                                    style: ElevatedButton.styleFrom(
                                      elevation: 6,
                                      backgroundColor: MyColors.blue_grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.r),
                                      ),
                                      side: BorderSide(
                                        color: MyColors.white,
                                        width: 1.w,
                                      ),
                                      shadowColor: MyColors.white
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

                              SizedBox(height: 60.h,),



                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 30.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          GestureDetector(
                            child: Text('donot_have'.tr,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal
                              ),),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=>Signupscreen()));
                            },
                            child: Text('Sign Up',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: MyColors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),






                    ],
                  ),
                ),
              ),
            ),
          ),

    )
    );
  }
}
