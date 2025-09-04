import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:url_launcher/url_launcher.dart';

import '../HomeScreen/HomeScreen.dart';
import '../myColors.dart';

class Contactusfragment extends StatefulWidget {
  const Contactusfragment({super.key});

  @override
  State<Contactusfragment> createState() => _ContactusfragmentState();
}

class _ContactusfragmentState extends State<Contactusfragment> {
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

              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                  boxShadow:[
                    BoxShadow(
                        color: MyColors.white.withOpacity(0.9),
                        blurRadius: 15,
                        offset: Offset(0,3)
                    )
                  ],
                ),

                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Image.asset('assets/images/objectives.png',height: 100.h,width: 100.w,),

                    SizedBox(height: 10.h,),
                    Center(child: Text('contact'.tr,

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
                      padding: const EdgeInsets.all(15.0),
                      child: Text('contuct_us'.tr,style: TextStyle(
                          fontSize: 10.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(

                        //height: 50.h, // Set the width of the input field
                        //width: 240.w,

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

                    ),

                    SizedBox(height: 20.h,),

                    SizedBox(
                      //height: 40.h,
                      width: 160.w,
                      child: GestureDetector(
                        //onTap: _saveProfileData,
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
                              padding:  EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      color: MyColors.white,
                                      fontSize: 20.sp,
                                    ),

                                  ),
                                  SizedBox(width: 7.w,),
                                  Icon(Icons.send,color: MyColors.white,size: 20.w,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h,)
                  ],
                ),
              ),
              SizedBox(height: 20.h,),

              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(



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


                      SizedBox(height: 5.w,),
                    ],
                  ),
                ),
              ),


              Center(
                child: Text('©Copyrights.VoiceOfIslam',
                  style: TextStyle(
                      color: MyColors.black,
                      fontSize: 13.sp
                  ),),
              ),

              SizedBox(height: 10.h,),
            ],
          ),
        ),
      ),
    )
    );
  }
}
