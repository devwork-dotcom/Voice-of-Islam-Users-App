import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../myColors.dart';

class Currentaffairfragment extends StatefulWidget {
  const Currentaffairfragment({super.key});

  @override
  State<Currentaffairfragment> createState() => _CurrentaffairfragmentState();
}

class _CurrentaffairfragmentState extends State<Currentaffairfragment> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.grey_white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark,

    ));
    return SafeArea(child:

    Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [


            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal5.png',
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
                                    padding:  EdgeInsets.all(7.0),
                                    child: Image.asset('assets/curr_affairs/discovery.png',
                                      height: 35.h,width: 35.w,
                                      fit: BoxFit.fill,

                                    ),
                                  ),


                                ))

                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cur_aff_science'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cur_aff_science_des'.tr,style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal10.png',
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
                                    padding:  EdgeInsets.all(7.0),
                                    child: Image.asset('assets/curr_affairs/prediction.png',
                                      height: 35.h,width: 35.w,
                                      fit: BoxFit.fill,

                                    ),
                                  ),


                                ))

                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('future_pred'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cur_aff_fut_pred_des'.tr,style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal6.png',
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
                                    child: Image.asset('assets/images/objectives.png',
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
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cur_aff_kiyamoth'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cur_aff_kiyamoth_des'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal1.png',
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
                                    child: Image.asset('assets/curr_affairs/festival.png',
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
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('event_festival2'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cd1'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),






            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal7.png',
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
                                    padding:  EdgeInsets.all(7.0),
                                    child: Image.asset('assets/curr_affairs/law.png',
                                      height: 35.h,width: 35.w,
                                      fit: BoxFit.fill,

                                    ),
                                  ),


                                ))

                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('law_of_islam2'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cd7'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal8.png',
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
                                    child: Image.asset('assets/curr_affairs/education.png',
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
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('education_sys'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                            /*Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cd8'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),




            Center(
              child: Padding(
                padding:  EdgeInsets.all(15.w),
                child: GestureDetector(
                  onTap: (){ },
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
                              child: Image.asset('assets/calender/cal9.png',
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
                                    child: Image.asset('assets/curr_affairs/healthcare.png',
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
                              padding:  EdgeInsets.only(left: 15.w,top: 25.h,bottom: 10.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('health_care2'.tr,style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.black
                                ),),
                              ),
                            ),

                           /* Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 2.h,bottom: 5.h,right: 15.w),
                              child: Align(
                                alignment: Alignment.centerLeft,

                                child: Text('cd9'.tr,style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: MyColors.blue_grey
                                ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),*/
                          ],
                        ),

                      ],
                    ),
                  ),
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
