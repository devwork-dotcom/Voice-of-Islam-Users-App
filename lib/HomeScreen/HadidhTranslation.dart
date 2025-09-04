import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../myColors.dart';

class Hadidhtranslation extends StatefulWidget {
  const Hadidhtranslation({super.key});

  @override
  State<Hadidhtranslation> createState() => _HadidhtranslationState();
}

class _HadidhtranslationState extends State<Hadidhtranslation> {
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
      backgroundColor: MyColors.grey_white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [

            SizedBox(height: 10.h, ),

            Padding(
              padding:  EdgeInsets.all(8.h),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey,
                        borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh1.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h1'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: MyColors.blue_grey,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh2.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h2'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),


            Padding(
              padding:  EdgeInsets.all(8.h),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: MyColors.blue_grey,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh3.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h3'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: MyColors.blue_grey,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh4.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h4'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(8.h),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: MyColors.blue_grey,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh5.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h5'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: MyColors.blue_grey,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: MyColors.blue_grey,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 7,
                                      offset: Offset(0, 1)
                                  )
                                ]
                            ),
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                    child: Image.asset('assets/hadidh/hadidh6.png',
                                      height: 100.h,width: 100.w,),
                                  ),

                                  //SizedBox(height: 2.h,),
                                  Text('h6'.tr,style: TextStyle(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,

                                  ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),


          /*            Padding(
                        padding: EdgeInsets.all(12.w),
                        child: Container(


                          decoration: BoxDecoration(
                              color: MyColors.blue_grey,
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColors.white,
                                  blurRadius: 6,
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
                                            blurRadius: 7,
                                            offset: Offset(0, 1)
                                        )
                                      ]
                                  ),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0,bottom: 2),
                                          child: Image.asset('assets/hadidh/hadidh1.png',
                                            height: 100.h,width: 100.w,),
                                        ),

                                        //SizedBox(height: 2.h,),
                                        Text('h1'.tr,style: TextStyle(
                                          color: MyColors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,

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
                                  padding:  EdgeInsets.all(8.0),
                                  child: Expanded(
                                    child: Text('bukhari'.tr,style: TextStyle(
                                      color: MyColors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.sp
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

                      Padding(
                        padding: EdgeInsets.all(12.w),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(


                              decoration: BoxDecoration(
                                  color: MyColors.blue_grey,
                                  borderRadius: BorderRadius.circular(5.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
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
                                              child: Image.asset('assets/hadidh/hadidh2.png',
                                                height: 100.h,width: 100.w,),
                                            ),

                                            //SizedBox(height: 2.h,),
                                            Text('h2'.tr,style: TextStyle(
                                              color: MyColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,

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
                                      padding:  EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text('muslim'.tr,style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
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
                        padding: EdgeInsets.all(12.w),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(


                              decoration: BoxDecoration(
                                  color: MyColors.blue_grey,
                                  borderRadius: BorderRadius.circular(5.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
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
                                              child: Image.asset('assets/hadidh/hadidh3.png',
                                                height: 100.h,width: 100.w,),
                                            ),

                                            //SizedBox(height: 2.h,),
                                            Text('h3'.tr,style: TextStyle(
                                              color: MyColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,

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
                                      padding:  EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text('abu_daud'.tr,style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
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
                        padding: EdgeInsets.all(12.w),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(


                              decoration: BoxDecoration(
                                  color: MyColors.blue_grey,
                                  borderRadius: BorderRadius.circular(5.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
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
                                              child: Image.asset('assets/hadidh/hadidh4.png',
                                                height: 100.h,width: 100.w,),
                                            ),

                                            //SizedBox(height: 2.h,),
                                            Text('h4'.tr,style: TextStyle(
                                              color: MyColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,

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
                                      padding:  EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text('tirmijhi'.tr,style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
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
                        padding: EdgeInsets.all(12.w),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(


                              decoration: BoxDecoration(
                                  color: MyColors.blue_grey,
                                  borderRadius: BorderRadius.circular(5.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
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
                                              child: Image.asset('assets/hadidh/hadidh5.png',
                                                height: 100.h,width: 100.w,),
                                            ),

                                            //SizedBox(height: 2.h,),
                                            Text('h5'.tr,style: TextStyle(
                                              color: MyColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,

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
                                      padding:  EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text('nasayi'.tr,style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
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
                        padding: EdgeInsets.all(12.w),
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(


                              decoration: BoxDecoration(
                                  color: MyColors.blue_grey,
                                  borderRadius: BorderRadius.circular(5.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.white,
                                      blurRadius: 6,
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
                                              child: Image.asset('assets/hadidh/hadidh6.png',
                                                height: 100.h,width: 100.w,),
                                            ),

                                            //SizedBox(height: 2.h,),
                                            Text('h6'.tr,style: TextStyle(
                                              color: MyColors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,

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
                                      padding:  EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text('ibn_majah'.tr,style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp
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
                      ),*/
          ],
        ),
      ),
    )
    );
  }
}
