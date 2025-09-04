import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:voiceofislam/LoginScreen/LoginWelcomeScreen.dart';
import 'package:voiceofislam/LoginScreen/ProfileInformationScreen.dart';
import 'package:voiceofislam/LoginScreen/SignInScreen.dart';
import 'package:voiceofislam/introductionScreen/intruduction_screen.dart';
import 'package:voiceofislam/myColors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Languageselectionscreen extends StatefulWidget {
  const Languageselectionscreen({super.key});

  @override
  State<Languageselectionscreen> createState() => _LanguageselectionscreenState();
}

class _LanguageselectionscreenState extends State<Languageselectionscreen> {
  String? selectedLanguage;

  // List of language names with their corresponding emoji flags
  //https://flagpedia.net/emoji#google_vignette
  final List<Map<String, String>> languages = [
    {"name": "Bangla", "flag": "🇧🇩"},  // Bangladeshi Flag
    {"name": "English", "flag": "🇺🇸"},  // US Flag
  ];

  @override
  void initState() {
    super.initState();
    _loadLanguage();
  }

  // Load the saved language from SharedPreferences
  _loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedLanguage = prefs.getString('language') ?? null;
    });

    // Update locale based on the saved language
    if (selectedLanguage == "Bangla") {
      Get.updateLocale(Locale('bn', 'BD'));
    } else if (selectedLanguage == "English") {
      Get.updateLocale(Locale('en', 'US'));
    }
  }

  // Save the selected language to SharedPreferences and update locale
  _saveLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.blue_grey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 90.h),
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
                  color:MyColors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.w),
                color:MyColors.off_white,
                height: 1.h,
              ),
              SizedBox(height: 20.h),

              // Dropdown for selecting language with flag emoji and name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w,),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:MyColors.white,),
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    color:MyColors.blue_grey,

                    boxShadow: [
                      BoxShadow(
                        color:MyColors.white.withOpacity(0.9),
                        blurRadius: 4,
                        offset: Offset(0, 1)
                      )
                    ]
                  ),
                  child: DropdownButton<String>(
                    padding: EdgeInsets.all( 5.h),
                    underline: SizedBox(),
                    isExpanded: true,
                    value: selectedLanguage,
                    hint: Text(
                      'Select Language',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color:MyColors.white,
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
                                color:MyColors.white,
                              ),
                            ),
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

              SizedBox(height: 20.h),

              // Next Button
              Container(
                alignment: Alignment.center,




                child: ElevatedButton(

                  onPressed: () {
                    if (selectedLanguage != null) {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Loginwelcomescreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select a language')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    elevation: 6,
                    backgroundColor: MyColors.blue_grey,
                    shadowColor: MyColors.white,
                    side: BorderSide(
                      color: MyColors.white,
                      width: 1.w
                    )
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),



            ],
          ),
        ),
      ),
    );
  }
}
