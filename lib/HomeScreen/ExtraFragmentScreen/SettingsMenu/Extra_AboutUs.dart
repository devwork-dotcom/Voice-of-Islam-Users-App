import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voiceofislam/HomeScreen/ExtraReadMore.dart';

import '../../../myColors.dart';

class ExtraAboutus extends StatefulWidget {
  const ExtraAboutus({super.key});

  @override
  State<ExtraAboutus> createState() => _ExtraAboutusState();
}

class _ExtraAboutusState extends State<ExtraAboutus> {
  final String _facebookUrl = 'https://www.facebook.com/profile.php?id=100009829447434&mibextid=ZbWKwL';
  final String _youtubeUrl = 'https://youtube.com/@voiceofislam1400?si=4qc51xcvH9jLBeCJ';
  final String _instagramUrl = 'https://www.instagram.com/shamim_hosen21022000?igsh=MWZ6YXV2Y2d0MTFpNw==';
  final String _twitterUrl = 'https://x.com/shamim_hosen_?t=CYiCHntNkHy91eRxCR55nA&s=09';
  final String _tiktokUrl = 'https://www.tiktok.com/@niloyhosen000?_t=8qOwPSeeSqA&_r=1';
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
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/quran_learing_intro.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('quran_study'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),



                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('quran_history'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    ),


                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/hadidh.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('hadith_tran'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('hadidh_history'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    )
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/well_known.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('current_into'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('cur_affair'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    )
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/namaz_into.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('right_into'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('right_sunnah'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/islam_history.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('islam_his_into'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('islamic_history'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blueGrey,
                ),

                child: Column(
                  children: [
                    Image.asset('assets/images/kiyamah.png',),

                    SizedBox(height: 10.h,),
                    Center(child: Text('kiyamoth_into'.tr,

                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.white,
                      ),
                    ),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      height: 1.h,
                      color: MyColors.off_white,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('kiyamoth_alamoth'.tr,style: TextStyle(
                          fontSize: 13.sp,
                          color: MyColors.white

                      ),
                        textAlign: TextAlign.justify,

                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 40.h,),

              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      Padding(
                        padding:  EdgeInsets.only(top: 5.h,bottom: 5.h),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(

                              height: 50.h,
                              width: 40.w,
                              child: GestureDetector(
                                onTap: () => _launchUrl(_facebookUrl),
                                child: Image.asset('assets/images/facebook.png'),
                              ),
                            ),

                            SizedBox(width: 10.w,),
                            SizedBox(

                              height: 50.h,
                              width: 40.w,
                              child: GestureDetector(
                                onTap: () => _launchUrl(_youtubeUrl),
                                child: Image.asset('assets/images/youtube.png'),
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
                                  _launchUrl(_twitterUrl);
                                },
                                child: Image.asset('assets/images/twitter.png'),
                              ),
                            ),

                            SizedBox(width: 10.w,),


                            SizedBox(

                              height: 50.h,
                              width: 40.w,
                              child: GestureDetector(
                                onTap: (){
                                  _launchUrl(_tiktokUrl);
                                },
                                child: Image.asset('assets/images/tiktok.png'),
                              ),
                            ),
                          ],
                        ),
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

              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    )
    );
  }
}
