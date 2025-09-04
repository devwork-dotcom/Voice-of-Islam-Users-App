import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../myColors.dart';

class Calenderfragment extends StatefulWidget {
  const Calenderfragment({super.key});

  @override
  State<Calenderfragment> createState() => _CalenderfragmentState();
}

class _CalenderfragmentState extends State<Calenderfragment> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [

            Padding(
              padding: EdgeInsets.only(top:12.h,left: 12.w,right: 12.w,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c1.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c1'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd1'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c2.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c2'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd2'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c3.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c3'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd3'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c4.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c4'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd4'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),



            Padding(
              padding: EdgeInsets.only(top:12.h,left: 12.w,right: 12.w,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c5.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c5'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd5'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c6.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c6'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd6'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c7.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c7'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd7'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c8.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c8'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd8'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),




            Padding(
              padding: EdgeInsets.only(top:12.h,left: 12.w,right: 12.w,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c9.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c9'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd9'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c10.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c10'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd10'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c11.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c11'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd11'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:12.w,right: 12.w,top: 5.h,bottom: 5.h),
              child: GestureDetector(
                onTap: (){},
                child: Container(


                    decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.off_white,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          )
                        ]

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [

                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 4,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/calender/c12.png',
                                      height: 60.h,width: 60.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('c12'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: 200.w,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 10.h,left: 5.w,right: 10.w,bottom: 5.h,),
                            child: Expanded(
                              child: Text('cd12'.tr,style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp
                              ),
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        )


                      ],

                    )
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
