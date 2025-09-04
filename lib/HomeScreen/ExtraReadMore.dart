import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/FirebaseServices/FirebaseServices.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/QiblaDirectionFragment.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_AboutUs.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_ContactUs.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_Feedback.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_Language.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_Update.dart';
import 'package:voiceofislam/HomeScreen/ExtraFragmentScreen/SettingsMenu/Extra_profile.dart';
import 'package:voiceofislam/HomeScreen/HomeScreen.dart';

import '../DrawerScreen/SettingsScreen/SettingsFeedback.dart';
import '../DrawerScreen/SettingsScreen/SettingsLanguage.dart';
import '../DrawerScreen/SettingsScreen/SettingsProfile.dart';
import '../DrawerScreen/SettingsScreen/SettingsUpdate.dart';
import '../myColors.dart';

class Extrareadmore extends StatefulWidget {
  const Extrareadmore({super.key});

  @override
  State<Extrareadmore> createState() => _ExtrareadmoreState();
}

class _ExtrareadmoreState extends State<Extrareadmore> {

  bool _showAllSettings = false;

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
      statusBarColor: MyColors.grey_white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark,

    ));

    return SafeArea(child:

    WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        return false;
      },
      child: Scaffold(
        backgroundColor: MyColors.grey_white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: [

              //Menu
              Padding(
                padding:  EdgeInsets.only(left: 10.w,top: 10.h,right: 30.w,bottom: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Menu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: MyColors.black,
                    ),),

                    //PopUp Menu
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: PopupMenuTheme(
                        data: PopupMenuThemeData(
                          color: MyColors.blue_grey, // Background color of the popup menu

                          elevation: 50, // Shadow depth
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Border radius
                          ),
                        ),


                        child: PopupMenuButton<int>(
                          icon: Icon(
                            Icons.settings,
                            color: MyColors.black,
                            size: 28.w,
                          ),
                          onSelected: (value) {
                            switch (value) {
                              case 0:
                              // Navigate to Profile
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ExtraProfile()));
                                break;
                              case 1:
                              // Navigate to Update Profile
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ExtraUpdate()));
                                break;
                              case 2:
                              // Navigate to Language Settings
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ExtraLanguage()));
                                break;
                            }
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 0,
                              child: ListTile(
                                leading: Icon(Icons.person, color: MyColors.white,size: 20.w,),
                                title: Text("Profile",style: TextStyle(
                                  color: MyColors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal
                                ),),


                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                leading: Icon(Icons.update, color: MyColors.white,size: 20.w,),
                                title: Text("Update Profile",style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.normal
                                ),),


                              ),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: ListTile(
                                leading: Icon(Icons.language, color: MyColors.white,size: 20.w,),
                                title: Text("Language",style: TextStyle(
                                    color: MyColors.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.normal
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),

              //Profile Image Box
              Padding(
                padding: EdgeInsets.only(left:10.w,right: 10.w,bottom: 5.h,top: 5.h),
                child: SizedBox(
                  //height: 55.h,
                  child: Container(

                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.off_black,
                          blurRadius: 4,
                          offset:Offset (0,1),
                        )
                      ],
                    ),

                    child: Padding(
                      padding: EdgeInsets.only(left: 18.0,right: 10.h,top: 5.h,bottom: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40.h,
                            width: 40.w,

                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: MyColors.off_white,
                                  width: 2.w,
                                ),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.white,
                                  blurRadius: 4,
                                  offset:Offset (0,1),
                                )
                              ],
                            ),

                            child: ClipOval(

                              child:_imageFile != null? Image.file(_imageFile!,
                                fit: BoxFit.cover,
                                width: 120.w,
                                height: 120.h,): Image.asset('assets/images/logo.png',fit: BoxFit.cover,),// Replace with the actual image path
                              // Ensures the image fits inside the circle
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Text(_name, style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal,
                            color: MyColors.deep_blue
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),


                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Row
              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/curr_affairs/discovery.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Visualization Islam',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),


                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/alarm.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Prayer Alarm',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/qurancolor.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Al-Quran',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/book.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Al Hadidh',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/calender.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Islamic Reminder',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/bookstack.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Islamic Book',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/video.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Visualize Quran',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/headphone.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Audio Quran',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/science.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Science',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/reward.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Motivation',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),




              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/conversation.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Question\'s Answer',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    /*GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Qibladirectionfragment()));
                      },
                      child: SizedBox(

                        child: Container(

                          height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/kaba.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Kaba Direction',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),*/

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 60.h,
                        width: 160.w,


                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.only(left: 20.w,bottom: 5.h),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Suggessions',style: TextStyle(
                    color: MyColors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),







              //settings and privacy
              Padding(
                padding: EdgeInsets.only(left:10.w,right: 10.w,bottom: 5.h),
                child: SizedBox(
                  //height: 42.h,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _showAllSettings = ! _showAllSettings;
                      });
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_black,
                            blurRadius: 4,
                            offset:Offset (0,1),
                          )
                        ],
                      ),

                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w,right: 6.w,top: 8.h,bottom: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Row(

                              children: [
                                Icon(Icons.settings,size: 24.w,color: MyColors.off_white,),
                                SizedBox(width: 10.w,),
                                Text('Privacy & Settings', style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.off_black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,),
                              ],
                            ),
                            Icon(_showAllSettings? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                              size: 28.w,color: MyColors.off_white,)


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: _showAllSettings,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Padding(
                        padding:  EdgeInsets.only(left:  10.w,right: 10.w,top: 10.h,bottom: 5.h),
                        child: SizedBox(
                          //height: 42.h,
                          //width: 160.w,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=>ExtraProfile()));
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
                                padding:EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
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


                      Padding(
                        padding:  EdgeInsets.only(left:  10.w,right: 10.w,top: 5.h,bottom: 5.h),
                        child: SizedBox(
                          //height: 42.h,
                          //width: 160.w,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=>ExtraUpdate()));
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
                                padding:EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
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


                      Padding(
                        padding:  EdgeInsets.only(left:  10.w,right: 10.w,top: 5.h,bottom: 5.h),
                        child: SizedBox(
                          //height: 42.h,
                          //width: 160.w,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context)=>ExtraLanguage()));
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
                                padding:EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
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

                    ],
                  )
              ),



              //contact us & feedback
              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>ExtraContactus()));
                      },
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/contactus.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Contact us',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>ExtraFeedback()));
                      },
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/feedback.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('Feedback',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),




              //about us
              Padding(
                padding:  EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>ExtraAboutus()));
                      },
                      child: SizedBox(

                        child: Container(

                          //height: 60.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(5.r,),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.off_white,
                                  blurRadius: 4,
                                  offset: Offset(0,1),
                                )
                              ]
                          ),

                          child: Padding(
                            padding: EdgeInsets.only(left:12.w,top: 7.h,bottom: 7.h ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/setting/aboutus.png',height: 24.h,width: 24.w,fit: BoxFit.fill,),
                                SizedBox(height: 3.h,),

                                Text('About us',style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: MyColors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)


                              ],


                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        height: 60.h,
                        width: 160.w,


                      ),
                    ),
                  ],
                ),
              ),


              //log out
              Padding(
                padding: EdgeInsets.only(left:10.w,right: 10.w,bottom: 15.h,top: 10.h),
                child: SizedBox(
                  //height: 42.h,
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
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_black,
                            blurRadius: 4,
                            offset:Offset (0,1),
                          )
                        ],
                      ),

                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w,right: 5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 8.h,bottom: 8.h),
                              child: Row(

                                children: [
                                  Icon(Icons.logout,size: 24.w,color: MyColors.off_white,),
                                  SizedBox(width: 10.w,),
                                  Text('Log out', style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.off_black
                                  ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,),
                                ],
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded,size: 28.w,color: MyColors.off_white,)


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
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
