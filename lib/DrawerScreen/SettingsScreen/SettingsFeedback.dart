import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voiceofislam/DrawerScreen/FeedBackFragment.dart';
import 'package:voiceofislam/DrawerScreen/SettingFragment.dart';

import '../../myColors.dart';

class Settingsfeedback extends StatefulWidget {
  const Settingsfeedback({super.key});

  @override
  State<Settingsfeedback> createState() => _SettingsfeedbackState();
}

class _SettingsfeedbackState extends State<Settingsfeedback> {

  final _feedbackController = TextEditingController();
  double _rating = 0.0; // To store the user's rating
  final InAppReview _inAppReview = InAppReview.instance; // Instance for in-app review

  final String _messengerUrl = 'https://m.me/md.shamim.hosen02212000';
  final String _whatsapp = 'https://wa.me/8801788435394';
  final String _instagramUrl = 'https://www.instagram.com/shamim_hosen21022000?igsh=MWZ6YXV2Y2d0MTFpNw==';
  final String _phoneNumber = 'tel:+8801703485411';
  final String _gmailUrl = 'mailto:shamimshsh0@gmail.com?subject=Feedback&body=Your message here';

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  Future<void> _rateApp() async {
    // Check if the in-app review is available
    if (await _inAppReview.isAvailable()) {
      // Trigger the native review dialog for Play Store or App Store
      _inAppReview.requestReview();
    } else {
      // Show custom snackbar for rating if native review is not available
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('App review not available. Please rate in-app!'),
          duration: Duration(seconds: 2),
        ),
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
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Settingfragment()));
          return false;
        },
        child: Scaffold(
          backgroundColor: MyColors.blue_grey,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.blueGrey,
                  ),

                  child: Column(
                    children: [


                      SizedBox(height: 40.h),
                      Text(
                        "Give Us Your Feedback",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white,
                        ),
                      ),
                      Container(

                        height: 1.h,
                        color: MyColors.off_white,
                      ),
                      SizedBox(height: 10.h),

                      // Add the Rating Bar
                      Text(
                        "Rate Us",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: MyColors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      RatingBar.builder(
                        initialRating: _rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: index < _rating ? Colors.amber : Colors.white, // Set the selected and unselected star color
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            _rating = rating;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('You rated the app $_rating stars'),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20.h),

                      // Feedback input form
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.w),
                        child: TextFormField(
                          //controller: _emailController,
                          decoration: InputDecoration(

                            //labelText: 'Write message',
                            labelStyle: TextStyle(
                              color: MyColors.deep_blue,
                              // Label color
                            ),
                            hintText: 'Write your message',
                            hintStyle: TextStyle(color: MyColors.off_white),


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
                          keyboardType: TextInputType.text,

                          cursorColor: MyColors.deep_blue, // Cursor color
                          maxLines: null, // Allows infinite lines if needed
                          minLines: 1, // Starts with 1 line and grows as needed
                          expands: false, // Disable filling entire height; grows as text increases
                        ),
                      ),
                      SizedBox(height: 20.h),

                      // Submit Button to trigger app review
                      SizedBox(
                        //height: 40.h,
                        width: 190.w,
                        child: GestureDetector(
                          onTap: _rateApp,
                          child: Container(
                            decoration: BoxDecoration(
                              color: MyColors.blue_grey, // Background color
                              borderRadius: BorderRadius.circular(8.r), // Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.9), // Shadow color
                                  blurRadius: 4, // Blur effect
                                  offset: Offset(2, 2), // Offset for the shadow
                                ),
                              ],
                              border: Border.all(
                                color: MyColors.white, // Border color
                                width: 1.w, // Border width
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        color: MyColors.white,
                                        fontSize: 20.sp,
                                      ),

                                    ),
                                    SizedBox(width: 7.w,),
                                    Icon(Icons.rate_review,color: MyColors.white,size: 22.w,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),




                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      Image.asset('assets/images/necessary.png',height: 100.h,width: 100.w,),

                      SizedBox(height: 10.h,),
                      Center(child: Text('feedback_intro'.tr,

                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white,
                        ),
                      ),),
                      Container(

                        height: 1.h,
                        color: MyColors.off_white,
                      ),



                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('feedback_exp'.tr,style: TextStyle(
                            fontSize: 10.sp,
                            color: MyColors.white

                        ),
                          textAlign: TextAlign.justify,

                        ),
                      ),




                    ],
                  ),
                ),
                SizedBox(height: 20.h,),

                Container(



                  decoration: BoxDecoration(
                      color: MyColors.grey_white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        //topRight: Radius.circular(10.r),
                        bottomRight: Radius.circular(30.r),

                      )

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.w,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(

                            height: 50.h,
                            width: 40.w,
                            child: GestureDetector(
                              onTap: () => _launchUrl(_messengerUrl),
                              child: Image.asset('assets/images/messenger.png'),
                            ),
                          ),

                          SizedBox(width: 10.w,),
                          SizedBox(

                            height: 50.h,
                            width: 40.w,
                            child: GestureDetector(
                              onTap: () => _launchUrl(_whatsapp),
                              child: Image.asset('assets/images/whatsapp.png'),
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          SizedBox(

                            height: 50.h,
                            width: 40.w,
                            child: GestureDetector(
                              onTap: (){
                                _launchUrl(_instagramUrl);
                              },
                              child: Image.asset('assets/images/instagram.png'),
                            ),
                          ),

                          SizedBox(width: 10.w,),

                          SizedBox(

                            height: 50.h,
                            width: 40.w,
                            child: GestureDetector(
                              onTap: (){
                                _launchUrl(_gmailUrl);
                              },
                              child: Image.asset('assets/images/email.png'),
                            ),
                          ),

                          SizedBox(width: 10.w,),


                          SizedBox(

                            height: 50.h,
                            width: 40.w,
                            child: GestureDetector(
                              onTap: (){
                                _launchUrl(_phoneNumber);
                              },
                              child: Image.asset('assets/images/phone.png'),
                            ),
                          ),
                        ],
                      ),

                      Center(
                        child: Text('©Copyrights.VoiceOfIslam',
                          style: TextStyle(
                              color: MyColors.blue_grey,
                              fontSize: 13.sp
                          ),),
                      ),
                      SizedBox(height: 5.w,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
