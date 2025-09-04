import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/HomeScreen/ExtraReadMore.dart';

import '../../../myColors.dart';

class ExtraLanguage extends StatefulWidget {
  const ExtraLanguage({super.key});

  @override
  State<ExtraLanguage> createState() => _ExtraLanguageState();
}

class _ExtraLanguageState extends State<ExtraLanguage> {

  String? selectedLanguage;

  final List<Map<String, String>> languages = [
    {"name": "Bangla", "flag": "🇧🇩"},
    {"name": "English", "flag": "🇺🇸"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadLanguage();
  }

  _loadLanguage() async{
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      selectedLanguage = pref.getString('language')??null;
    });

    if(selectedLanguage == "Bangla"){
      Get.updateLocale(Locale('bn','BD'));
    }else if (selectedLanguage=="English"){
      Get.updateLocale(Locale('en','US'));
    }
  }

  _saveLanguage(String language) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('language', language);

    // Update locale based on selected language
    if (language == "Bangla") {
      Get.updateLocale(Locale('bn', 'BD'));
    } else if (language == "English") {
      Get.updateLocale(Locale('en', 'US'));
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

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 90.h,),
              Container(
                height: 150.h,
                width: 150.h,
                child: Image.asset('assets/images/logo.png'),
              ),

              Text(
                'select_lan'.tr,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: MyColors.white,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.h),
                color: MyColors.off_white,
                height: 1.h,
              ),
              SizedBox(height: 20.h),

              // Dropdown for selecting language with flag emoji and name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w,),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.9), // Shadow color
                        blurRadius: 4, // Blur effect
                        offset: Offset(0, 1), // Offset for the shadow
                      ),
                    ],
                  ),



                  child: DropdownButton<String>(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    underline: SizedBox(),
                    isExpanded: true,
                    value: selectedLanguage,
                    hint: Text(
                      'Select Language',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: MyColors.white,
                      ),
                    ),
                    items: languages.map((Map<String, String> language) {
                      return DropdownMenuItem<String>(
                        value: language["name"],
                        child: Row(
                          children: [
                            Text(
                              language["flag"]!,  // Flag emoji
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              language["name"]!,
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: MyColors.white,
                              ),
                            ),

                            SizedBox(height: 30.h,)
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLanguage = newValue;
                      });
                      if (newValue != null) {
                        _saveLanguage(newValue);// Save selected language


                      }
                    },
                    dropdownColor: MyColors.blue_grey,
                    iconEnabledColor: MyColors.white,
                  ),
                ),
              ),

              SizedBox(height: 90.h,)


            ],
          ),
        ),
      ),
    )
    );
  }
}
