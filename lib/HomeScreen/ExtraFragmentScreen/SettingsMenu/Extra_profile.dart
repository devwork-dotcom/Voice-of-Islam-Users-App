import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/HomeScreen/ExtraReadMore.dart';
import 'package:voiceofislam/HomeScreen/HomeScreen.dart';

import '../../../myColors.dart';

class ExtraProfile extends StatefulWidget {
  const ExtraProfile({super.key});

  @override
  State<ExtraProfile> createState() => _ExtraProfileState();
}

class _ExtraProfileState extends State<ExtraProfile> {

  File? _imageFile; // Holds the selected image

  String _name = '';
  String _phone = '';
  String _email = '';
  String _bloodType = '';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async{

    final SharedPreferences preferences = await SharedPreferences.getInstance();

    String? imagePath = preferences.getString('profile_image');

    String? name = await preferences.getString('name');
    String? phone_no = await preferences.getString('phone');
    String? email = await preferences.getString('user_mail');
    String? blood = await preferences.getString('user_blood');

    if(imagePath != null && mounted){
      setState(() {
        _imageFile = File(imagePath);
      });
    }

    _name = name ?? 'Unknown Name';
    _phone = phone_no ?? '+880 1xxx xxxxxx';
    _email = email ?? 'voiceofislam@gmail.com';
    _bloodType = blood ?? 'Unknown';

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
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Extrareadmore()));
        return false;
      },
      child: Scaffold(
        backgroundColor: MyColors.blue_grey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(

                margin: EdgeInsets.only(top: 50.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.white.withOpacity(0.9),
                        blurRadius: 15,
                        offset: Offset(0,3),
                      )
                    ]
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    SizedBox(height: 80.h,),

                    Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 120.h,
                            width: 120.w,

                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: MyColors.off_white,
                                  width: 4.w,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
                                      offset: Offset(0,3)
                                  )
                                ]
                            ),

                            child: ClipOval(

                              child:_imageFile != null? Image.file(_imageFile!,
                                fit: BoxFit.cover,
                                width: 120.w,
                                height: 120.h,): Image.asset('assets/images/logo.png',fit: BoxFit.cover,),// Replace with the actual image path
                              // Ensures the image fits inside the circle
                            ),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 30.h,),

                    Padding(padding: EdgeInsets.only(left: 20.w,right: 10.w),



                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.person,color: MyColors.deep_blue,size: 22.h,),

                            SizedBox(width: 15.w,),
                            Expanded(

                              child: Text(_name,


                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.deep_blue,



                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,

                              ),
                            ),
                          ],
                        ),
                      ),

                    ),


                    SizedBox(height: 10.h,),

                    Padding(padding: EdgeInsets.only(left: 20.w,right: 10.w),



                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.phone,color: MyColors.blue,size: 22.h,),

                            SizedBox(width: 15.w,),
                            Text(_phone,

                              selectionColor: MyColors.red,

                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: MyColors.white,



                              ),),
                          ],
                        ),
                      ),

                    ),

                    SizedBox(height: 10.h,),

                    Padding(padding: EdgeInsets.only(left: 20.w,right: 10.w),



                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.mail,color: MyColors.red,size: 22.h,),

                            SizedBox(width: 15.w,),
                            Expanded(
                              child: Text(
                                _email, // Replace with dynamic phone number if needed
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.white,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis, // Ensure long text is handled
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),

                    SizedBox(height: 10.h,),

                    Padding(padding: EdgeInsets.only(left: 20.w,right: 10.w),



                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(Icons.bloodtype,color: MyColors.red,size: 22.h,),

                            SizedBox(width: 15.w,),

                            Text('Blood Type : ',

                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: MyColors.white,


                              ),),

                            SizedBox(width: 5.w,),

                            Text(_bloodType,

                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: MyColors.white,


                              ),),
                          ],
                        ),
                      ),

                    ),

                    SizedBox(height: 80.h,),


                  ],
                ),

              ),

              SizedBox(height: 140.w,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('©Copyrights.VoiceOfIslam',
                  style: TextStyle(
                      color: MyColors.black,
                      fontSize: 13.sp
                  ),),
              ),
              SizedBox(height: 5.w,),
            ],
          ),

        ),
      ),
    )
    );
  }
}
