import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voiceofislam/LoginScreen/LoginWelcomeScreen.dart';
import 'package:voiceofislam/LoginScreen/SignInScreen.dart';

import '../IntroductionScreen/intruduction_screen.dart';
import '../myColors.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final _emailController = TextEditingController(); // Controller for email
  final _passwordController = TextEditingController(); // Controller for password
  bool _isPasswordVisible = false; // Track password visibility
  final FirebaseAuth _auth = FirebaseAuth.instance; // Firebase Auth instance



  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Function to handle sign-up
  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Sign up with email and password
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Navigate to the next screen after successful sign-up
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => introduction_screen()),
        );
      } on FirebaseAuthException catch (e) {
        // Handle Firebase exceptions
        String errorMessage = '';
        if (e.code == 'email-already-in-use') {
          errorMessage = 'The email is already in use by another account.';
        } else if (e.code == 'weak-password') {
          errorMessage = 'The password provided is too weak.';
        } else {
          errorMessage = e.message ?? 'An unknown error occurred.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      }
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
        child: WillPopScope(
          onWillPop: () async {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>Loginwelcomescreen()));
            return true;
          },
          child: Scaffold(
            backgroundColor: MyColors.blue_grey,

            body: SingleChildScrollView(
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
                          child: Text('SignUp Form',
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
                        padding: EdgeInsets.only(top: 50.h,left: 20.w,right: 20.w,),
                        child: Center(
                          child: Column(
                            children: [
                              // Email Input Field
                              // Email Input Field
                              SizedBox(
                                //height: 60.h, // Increased height for the input field
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      color: MyColors.deep_blue,
                                    ),
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(color: MyColors.off_white),

                                    prefixIcon: Icon(Icons.email, color: MyColors.off_white),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
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
                                    contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w), // Adjust vertical padding
                                  ),
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: MyColors.deep_blue,
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
                                  cursorColor: MyColors.blue_grey,
                                ),
                              ),

                              SizedBox(height: 20.h), // Space between fields

// Password Input Field
                              SizedBox(
                                //height: 60.h, // Increased height for the input field
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      color: MyColors.deep_blue,
                                    ),
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(color: MyColors.off_white),
                                    prefixIcon: Icon(Icons.lock, color: MyColors.off_white),
                                    suffixIcon: IconButton(
                                      icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                        color: MyColors.off_white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible = !_isPasswordVisible;
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
                                        width: 2.0.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                        color: MyColors.deep_blue,
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
                                    color: MyColors.deep_blue,
                                  ),
                                  obscureText: !_isPasswordVisible,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                  cursorColor: MyColors.blue_grey,
                                ),
                              ),


                              SizedBox(height: 30.h,),


                              //Elevated Button
                              SizedBox(


                                width: 200.w,

                                child:ElevatedButton(
                                    onPressed: _signUp,

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
                                            'Sign Up',
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
                            child: Text('already_have'.tr,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: MyColors.white,
                                fontWeight: FontWeight.normal
                              ),),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>Signinscreen()));
                            },
                            child: Text('Sign In',
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
