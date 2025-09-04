import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../myColors.dart';

class Quranlearning extends StatefulWidget {
  const Quranlearning({super.key});

  @override
  State<Quranlearning> createState() => _QuranlearningState();
}

class _QuranlearningState extends State<Quranlearning> {

  bool _showAllAudioClass = false;
  bool _showAllVideoClass = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.grey_white,
      statusBarIconBrightness:Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark
    ));

    return SafeArea(child:

    Scaffold(
      backgroundColor: MyColors.grey_white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [


            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _showAllAudioClass = ! _showAllAudioClass;
                    });
                  },
                  child: Container(

                    width: 320.w,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.blue_grey,
                          blurRadius: 4,
                          offset: Offset(0, 1)
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Stack(
                          clipBehavior: Clip.none,
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.r),
                                topRight: Radius.circular(5.r)
                              ),
                              child: Image.asset('assets/quranstudy/quran_study_back.png',
                                height: 130.h,width:320.w,fit: BoxFit.cover,),
                            ),

                            Positioned(
                              left: 80.w,
                                bottom: -20.w,

                                child: Container(

                                  decoration: BoxDecoration(
                                    color: MyColors.grey_white,
                                    borderRadius: BorderRadius.circular(45.r),

                                    boxShadow: [
                                      BoxShadow(
                                        color: MyColors.blue_grey,
                                        blurRadius: 15,
                                        offset: Offset(0,5)
                                      )
                                    ]


                                  ),

                                  child: Padding(
                                    padding:  EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/selfstudy.png',
                                      height: 40.h,width: 40.w,
                                      fit: BoxFit.fill,

                                    ),
                                  ),


                                ))

                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 1.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('quran_study'.tr,style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.black
                                ),
                                textAlign: TextAlign.justify,
                                ),
                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('self_desc'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Visibility(
              visible: _showAllAudioClass,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s1'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l1'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                        fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl1'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s2'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l2'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl2'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),


                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s3'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l3'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl3'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s4'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l4'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl4'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),


                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s5'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l5'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl5'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s6'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l6'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl6'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),


                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s7'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l7'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl7'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s8'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l8'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl8'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s9'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l9'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl9'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s10'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l10'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl10'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Blue class profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s11'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l11'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl11'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                    //Green class Profile
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Container(

                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.blue_grey,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]
                        ),
                        width: 320.w,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [

                            //Profile create

                            SizedBox(
                              width: 80.w,


                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/quranclass2.png',
                                      height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                    child: Text('s12'.tr, style: TextStyle(
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp
                                    ),),
                                  )
                                ],
                              ),
                            ),

                            //Description of Learning
                            Padding(
                              padding:  EdgeInsets.all(5.w),
                              child: SizedBox(
                                  width: 230.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Align(
                                        alignment: Alignment.center,
                                        child: Text('l2'.tr,style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold

                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text('sl12'.tr,style: TextStyle(
                                              color: MyColors.blue_grey,
                                              fontSize: 10.sp
                                          ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),
                            )

                          ],
                        ),



                      ),
                    ),

                  ],


                ),
            ),


            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _showAllVideoClass = !_showAllVideoClass;
                    });
                  },
                  child: Container(

                    width: 320.w,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1)
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Stack(
                          clipBehavior: Clip.none,
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.r),
                                topLeft: Radius.circular(5.r)
                              ),

                              child: Image.asset('assets/quranstudy/quran_study_video.png',
                                height: 130.h,width:320.w,fit: BoxFit.cover,),
                              
                            ),

                            Positioned(
                                left: 80.w,
                                bottom: -20.w,

                                child: Container(

                                  decoration: BoxDecoration(
                                      color: MyColors.grey_white,
                                      borderRadius: BorderRadius.circular(45.r),

                                      boxShadow: [
                                        BoxShadow(
                                            color: MyColors.blue_grey,
                                            blurRadius: 15,
                                            offset: Offset(0,5)
                                        )
                                      ]


                                  ),

                                  child: Padding(
                                    padding:  EdgeInsets.all(5.0),
                                    child: Image.asset('assets/quranstudy/videoclass2.png',
                                      height: 40.h,width: 40.w,
                                      fit: BoxFit.fill,

                                    ),
                                  ),


                                ))

                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 1.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('quran_study'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('video_desc'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Visibility(
              visible: _showAllVideoClass,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl1'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l1'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl1'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl2'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l2'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl2'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),


                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl3'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l3'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl3'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Green class Profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl4'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l4'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl4'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),


                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl5'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l5'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl5'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Green class Profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl6'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l6'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl6'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),


                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl7'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l7'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl7'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Green class Profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl8'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l8'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl8'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl9'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l9'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl9'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Green class Profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl10'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l10'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl10'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Blue class profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass2.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl11'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l11'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl11'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                  //Green class Profile
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(

                      decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.blue_grey,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                            )
                          ]
                      ),
                      width: 320.w,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          //Profile create

                          SizedBox(
                            width: 80.w,


                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.asset('assets/quranstudy/videoclass.png',
                                    height: 40.h,width: 40.w,fit: BoxFit.fill,),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,bottom: 5.h),
                                  child: Text('cl12'.tr, style: TextStyle(
                                      color: MyColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp
                                  ),),
                                )
                              ],
                            ),
                          ),

                          //Description of Learning
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: SizedBox(
                                width: 230.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('l2'.tr,style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold

                                      ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('sl12'.tr,style: TextStyle(
                                            color: MyColors.blue_grey,
                                            fontSize: 10.sp
                                        ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          )

                        ],
                      ),



                    ),
                  ),

                ],


              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}
