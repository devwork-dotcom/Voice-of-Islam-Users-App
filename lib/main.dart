import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/language/language.dart';
import 'package:voiceofislam/splashscreen.dart';
import 'package:voiceofislam/themedesign.dart';
import 'MyHomePage.dart';
import "package:firebase_core/firebase_core.dart";
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  final prefs = await SharedPreferences.getInstance();
  String? languageCode = prefs.getString('language'); // Get selected language

  // Default locale if no language is selected
  Locale initialLocale = Locale('bn', 'BD'); // Default to Bangla

  // Check the saved language and set the initial locale accordingly
  if (languageCode == 'English') {
    initialLocale = Locale('en', 'US');
  } else if (languageCode == 'Bangla') {
    initialLocale = Locale('bn', 'BD');
  }
  // Add more else if statements for additional languages in the future.

  runApp(MyApp(initialLocale: initialLocale));
}

class MyApp extends StatelessWidget {
  final Locale initialLocale;

  const MyApp({super.key, required this.initialLocale});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(


          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: initialLocale,
          fallbackLocale: Locale('bn', 'BD'), // Default fallback language


          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: ThemeMode.system,

          home: SplashScrren(),

        );
      },
    );
  }


}



