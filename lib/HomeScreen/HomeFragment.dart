

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/bottomsheet/bottomsheet.dart';
import 'package:voiceofislam/HomeScreen/HomeScreen.dart';
import 'package:voiceofislam/myColors.dart';

class Homefragment extends StatefulWidget {
  const Homefragment({super.key});

  @override
  State<Homefragment> createState() => _HomefragmentState();
}

class _HomefragmentState extends State<Homefragment> {

  bool arabic_calender_show = false; // Track visibility of extra rows
  bool quran_self_study = false; // Track visibility of extra rows
  bool quran_video_class = false; // Track visibility of extra rows
  bool hadidhMoreShow = false; // Track visibility of extra rows


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.grey_white,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark
    ));
    return SafeArea(child:

    Scaffold(
      backgroundColor: MyColors.grey_white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [

            //current affairs

            Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(


                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.blue_grey,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ]

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 6.h,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Row(
                          children: [
                            Image.asset('assets/setting/alarm.png',
                              height: 16.h,width: 16.w,fit: BoxFit.fill,),
                            SizedBox(width: 8.w,),
                            SizedBox(
                              child: Text('current_affairs'.tr,style: TextStyle(
                                color: MyColors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: MyColors.off_white,
                      height: 1.h,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [




                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/curr_affairs/discovery.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('science_dis'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/curr_affairs/festival.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('event_festival'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(

                                children: [
                                  Image.asset('assets/curr_affairs/prediction.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('future_pred'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/curr_affairs/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('history'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [




                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/curr_affairs/law.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('law_of_islam'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/curr_affairs/education.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('education_sys'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(

                                children: [
                                  Image.asset('assets/curr_affairs/healthcare.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('health_care'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 50.h,
                              width: 50.w,
                              /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                            ),
                          ),
                        ),



                      ],
                    ),

                  ],
                ),
              ),
            ),

            //Arabic calender and worship
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(


                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.blue_grey,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 6.h,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Row(
                          children: [

                            Image.asset('assets/setting/calender.png',
                              height: 16.h,width: 16.w,fit: BoxFit.fill,),
                            SizedBox(width: 8.w,),
                            SizedBox(
                              child: Text('arbabic_calender'.tr,style: TextStyle(
                                  color: MyColors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: MyColors.off_white,
                      height: 1.h,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [




                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/calender/c1.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('c1'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/calender/c2.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('c2'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/calender/c3.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('c3'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/calender/c4.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('c4'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),




                    Visibility(
                      visible: arabic_calender_show,
                      child: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c5.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c5'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c6.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c6'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c7.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c7'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c8.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c8'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c9.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c9'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c10.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c10'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c11.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c11'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/calender/c12.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('c12'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),

                        ],

                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.h,bottom: 10.h),
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              color: MyColors.off_white,
                              height: 1.h,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                arabic_calender_show= !arabic_calender_show;
                              });
                            },
                            child: Positioned(
                                left: 150.w,
                                bottom: -10,

                                child: Container(
                                  // height: 15.h,
                                  //width: 15.w,

                                  decoration: BoxDecoration(
                                    color: MyColors.blue_grey,
                                    borderRadius: BorderRadius.circular(45.r),
                                    border: Border.all(
                                        width: 1.w,
                                        color: MyColors.off_white
                                    ),

                                  ),
                                  child: Icon(
                                    arabic_calender_show? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down,
                                    size: 24.w,
                                    color: MyColors.white,
                                  ),

                                )

                            ),
                          )
                        ],
                      ),
                    ),






                  ],
                ),
              ),
            ),




            //Quran study
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(


                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.blue_grey,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    SizedBox(height: 6.h,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Row(
                          children: [

                            Image.asset('assets/setting/qurancolor.png',
                              height: 16.h,width: 16.w,fit: BoxFit.fill,),
                            SizedBox(width: 8.w,),
                            SizedBox(
                              child: Text('quran_study'.tr,style: TextStyle(
                                  color: MyColors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      color: MyColors.off_white,
                      height: 1.h,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [




                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                quran_self_study = !quran_self_study;
                                quran_video_class = false;
                              });
                            },
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/quranstudy/selfstudy.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('self_study'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                quran_video_class= !quran_video_class;
                                quran_self_study = false;
                              });
                            },
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/quranstudy/class.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('video_class'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 50.h,
                              width: 50.w,
                              /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 50.h,
                              width: 50.w,
                              /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                            ),
                          ),
                        ),




                      ],
                    ),




                    Visibility(
                      visible: quran_self_study,
                      child: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s1'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s2'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s3'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s4'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s5'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s6'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s7'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s8'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s9'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s10'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s11'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/quranclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('s12'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),

                        ],

                      ),
                    ),

                    Visibility(
                      visible: quran_video_class,
                      child: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl1'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl2'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl3'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl4'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl5'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl6'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl7'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass2.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl8'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl9'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/quranstudy/videoclass.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('cl10'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                                  ),
                                ),
                              ),



                            ],
                          ),

                        ],

                      ),
                    ),







                  ],
                ),
              ),
            ),




            //Hadidh

            Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(


                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.blue_grey,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 6.h,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.w),
                        child: Row(
                          children: [

                            Image.asset('assets/setting/book.png',
                              height: 16.h,width: 16.w,fit: BoxFit.fill,),
                            SizedBox(width: 8.w,),
                            SizedBox(
                              child: Text('hadidh_in'.tr,style: TextStyle(
                                  color: MyColors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: MyColors.off_white,
                      height: 1.h,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [




                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/hadidh/hadidh1.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('h1'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/hadidh/hadidh2.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('h2'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/hadidh/hadidh3.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('h3'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/hadidh/hadidh4.png', height: 50.h,width: 50.w,),

                                  SizedBox(height: 2.h,),
                                  Text('h4'.tr,style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),




                    Visibility(
                      visible: hadidhMoreShow,
                      child: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [




                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/hadidh/hadidh5.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('h5'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Image.asset('assets/hadidh/hadidh6.png', height: 50.h,width: 50.w,),

                                        SizedBox(height: 2.h,),
                                        Text('h6'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
                                        ),textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: (){},
                                  child: SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    /*child: Column(
                                children: [
                                  Image.asset('assets/images/history.png', height: 50.h,width: 50.w,),

                                  //SizedBox(height: 2.h,),
                                  Text('History',style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
                                  ),)
                                ],
                              ),*/
                                  ),
                                ),
                              ),



                            ],
                          ),




                        ],

                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.h,bottom: 10.h),
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              color: MyColors.off_white,
                              height: 1.h,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                hadidhMoreShow = !hadidhMoreShow;
                              });
                            },
                            child: Positioned(
                                left: 150.w,
                                bottom: -10,

                                child: Container(
                                  // height: 15.h,
                                  //width: 15.w,

                                  decoration: BoxDecoration(
                                    color: MyColors.blue_grey,
                                    borderRadius: BorderRadius.circular(45.r),
                                    border: Border.all(
                                        width: 1.w,
                                        color: MyColors.off_white
                                    ),

                                  ),
                                  child: Icon(
                                    arabic_calender_show? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down,
                                    size: 24.w,
                                    color: MyColors.white,
                                  ),

                                )

                            ),
                          )
                        ],
                      ),
                    ),






                  ],
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


