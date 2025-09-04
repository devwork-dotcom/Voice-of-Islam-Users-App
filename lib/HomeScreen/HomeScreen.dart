import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/DrawerScreen/AboutUsFragment.dart';
import 'package:voiceofislam/DrawerScreen/ContactUsFragment.dart';
import 'package:voiceofislam/DrawerScreen/FeedBackFragment.dart';
import 'package:voiceofislam/DrawerScreen/HolyQuranFragment.dart';
import 'package:voiceofislam/DrawerScreen/IslamicBookFragment.dart';
import 'package:voiceofislam/DrawerScreen/LanguageSettingsFragment.dart';
import 'package:voiceofislam/DrawerScreen/ProfileFragment.dart';
import 'package:voiceofislam/DrawerScreen/SettingFragment.dart';
import 'package:voiceofislam/DrawerScreen/UpdateInformationFragment.dart';
import 'package:voiceofislam/FirebaseServices/FirebaseServices.dart';
import 'package:voiceofislam/HomeScreen/CalenderFragment.dart';
import 'package:voiceofislam/HomeScreen/CurrentAffairFragment.dart';
import 'package:voiceofislam/HomeScreen/ExtraReadMore.dart';
import 'package:voiceofislam/HomeScreen/HadidhTranslation.dart';
import 'package:voiceofislam/HomeScreen/HomeFragment.dart';
import 'package:voiceofislam/HomeScreen/QuranLearning.dart';
import 'package:voiceofislam/main.dart';
import 'package:voiceofislam/myColors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {


  File? _imageFile; // Holds the selected image

  String _name = '';
  String _phone = '';
  String _email = '';
  String _bloodType = '';

  @override
  void initState() {
    super.initState();
    _loadData();

    _tabController = TabController(length: _screens.length, vsync: this);
    _pageController = PageController(initialPage: _currentIndex);

    // Listen for tab changes to update the page view
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _onTabSelected(_tabController.index);
      }
    });
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

  int _currentIndex = 0;
  final List<int> _stack = [0]; // Ensure the home screen (index 0) is always in the stack
  late TabController _tabController;
  late PageController _pageController;

  final List<Widget> _screens = [
    Homefragment(),
    Currentaffairfragment(),
    Calenderfragment(),
    Quranlearning(),
    Hadidhtranslation(),
    Extrareadmore(),
  ];



  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);

      if (index == 0) {
        // If home screen is selected, clear all except home
        _stack.clear();
        _stack.add(0);
      } else {
        // For other screens, manage the stack normally
        if (_stack.contains(index)) {
          _stack.remove(index); // Remove if already in the stack
        }
        _stack.add(index); // Add current tab to stack
      }
    });
  }

  // Handle swipe between screens
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
      _tabController.animateTo(index);

      if (index == 0) {
        // If home screen is swiped to, clear all except home
        _stack.clear();
        _stack.add(0);
      } else {
        if (_stack.contains(index)) {
          _stack.remove(index);
        }
        _stack.add(index);
      }
    });
  }

  // Handle back button press to pop stack or exit if home screen is active
  Future<bool> _onWillPop() async {
    if (_currentIndex == 0) {
      exit(0);
      //await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      // Exit the app if currently on the home screen
      //return true;
    } else if (_stack.length > 1) {
      // If not on the home screen, go back to the previous screen
      setState(() {
        _stack.removeLast(); // Pop the last visited screen
        _currentIndex = _stack.last;
        _tabController.animateTo(_currentIndex);
        _pageController.jumpToPage(_currentIndex);
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyColors.grey_white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.grey_white,
      systemNavigationBarIconBrightness: Brightness.dark,

    ));

    return WillPopScope(
      onWillPop: _onWillPop,

      child: DefaultTabController(
          length: 6,


          child: SafeArea(

              child:Scaffold(

                backgroundColor: MyColors.white,

                appBar: AppBar(

                  //automaticallyImplyLeading: false,
                  backgroundColor: MyColors.grey_white,

                  //centerTitle: true,

                  title: Text('app_name'.tr,
                  style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: MyColors.blue),
                  ),
                  actions: [

                    SizedBox(child: GestureDetector(

                      child: Image.asset('assets/images/writting_notes.png',height: 28.h,width: 28.w,),
                      onTap: (){},
                    ),),

                    SizedBox(width: 50.w,),
                  ],
                  bottom: TabBar(
                      //isScrollable: true,

                    controller: _tabController,
                    onTap: _onTabSelected, // Ensure tab is updated on tap
                      tabs: [
                        Tab(icon: Icon(Icons.home),),
                        Tab(icon: Icon(Icons.tv),),
                        Tab(icon: Icon(Icons.calendar_month),),
                        Tab(icon: Image.asset('assets/images/quran_icon.png'),height: 25.h,),
                        Tab(icon: Image.asset('assets/images/hadidh_icon.png'),height: 25.h,),
                        Tab(icon: Icon(Icons.read_more),),
                      ],
                    indicatorColor: MyColors.blue, // Set the indicator color to blue
                    labelColor: MyColors.blue, // Selected tab color (icon/text color)
                    unselectedLabelColor: Colors.black, // Unselected tab color (icon/text color)


                  ),
                ),


                drawer: Drawer(
                  width: 260.w,
                  backgroundColor: MyColors.grey_white,


                  child: ListView(
                    children: [
                      DrawerHeader(
                        padding:EdgeInsets.only(left: 15.w, right: 10.w,top: 6.h,bottom: 6.h) ,

                        decoration: BoxDecoration(color: MyColors.blue_grey),

                        child: SizedBox(



                          child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w, // Adjust the width according to the desired image size
                                  height: 60.h, // Adjust the height according to the desired image size
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: MyColors.off_white, // Red border color
                                      width: 3.0, // Border width
                                    ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: MyColors.white,
                                            blurRadius: 6,
                                            offset: Offset(0,3)
                                        )
                                      ]
                                  ),
                                  child: ClipOval(
                                    child: _imageFile != null ? Image.file(_imageFile!,fit: BoxFit.cover,):Image.asset('assets/images/logo.png',fit: BoxFit.cover,),
                                  ),
                                ),
                                Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(_name,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: MyColors.white),),
                                      Text(_email,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: MyColors.golden),),

                                    ],

                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ),

                      ListTile(
                        leading: Icon(Icons.person,color: MyColors.off_black,),
                        title: Text('Profile',
                        style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),
                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Profilefragment()));
                          },

                      ),

                      ListTile(
                        leading: Icon(Icons.update,color: MyColors.off_black,),
                        title: Text('Update Information',
                          style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Updateinformationfragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.bookmarks_outlined,color: MyColors.off_black,),
                        title: Text('Holy-Quran',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Holyquranfragment()));
                        },

                      ),
                      ListTile(
                        leading: Icon(Icons.book_outlined,color: MyColors.off_black,),
                        title: Text('Islamic Book',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Islamicbookfragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.settings,color: MyColors.off_black,),
                        title: Text('Settings',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Settingfragment()));
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.language,color: MyColors.off_black,),
                        title: Text('Language',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Languagesettingsfragment()));
                        },
                      ),



                      ListTile(leading: Icon(Icons.person_search,color: MyColors.off_black,),
                        title: Text('About Us',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Aboutusfragment()));
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.contact_mail,color: MyColors.off_black,),
                        title: Text('Contact Us',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Contactusfragment()));
                        },
                      ),


                      ListTile(
                        leading: Icon(Icons.feedback,color: MyColors.off_black,),
                        title: Text('Feedback',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>FeedbackFragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.logout,color: MyColors.off_black,),
                        title: Text('Log out',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: () async{

                        FirebaseAuthService authServices = FirebaseAuthService();

                        await authServices.sign_Out();

                        await authServices.google_signout();

                        SharedPreferences pref = await SharedPreferences.getInstance();
                        await pref.remove('user_id');

                        exit(0);

                        },
                      ),
                    ],
                  ),
                ),

                endDrawer: Drawer(
                  width: 260.w,
                  backgroundColor: MyColors.grey_white,


                  child: ListView(
                    children: [
                      DrawerHeader(
                        padding:EdgeInsets.only(left: 15.w, right: 10.w,top: 6.h,bottom: 6.h) ,

                        decoration: BoxDecoration(color: MyColors.blue_grey),

                        child: SizedBox(



                          child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w, // Adjust the width according to the desired image size
                                  height: 60.h, // Adjust the height according to the desired image size
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: MyColors.off_white, // Red border color
                                        width: 3.0, // Border width
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: MyColors.white,
                                            blurRadius: 6,
                                            offset: Offset(0,3)
                                        )
                                      ]
                                  ),
                                  child: ClipOval(
                                    child: _imageFile != null ? Image.file(_imageFile!,fit: BoxFit.cover,):Image.asset('assets/images/logo.png',fit: BoxFit.cover,),
                                  ),
                                ),
                                Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(_name,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: MyColors.white),),
                                      Text(_email,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: MyColors.golden),),

                                    ],

                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ),

                      ListTile(
                        leading: Icon(Icons.person,color: MyColors.off_black,),
                        title: Text('Profile',
                          style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),
                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Profilefragment()));
                        },

                      ),

                      ListTile(
                        leading: Icon(Icons.update,color: MyColors.off_black,),
                        title: Text('Update Information',
                          style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Updateinformationfragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.bookmarks_outlined,color: MyColors.off_black,),
                        title: Text('Holy-Quran',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Holyquranfragment()));
                        },

                      ),
                      ListTile(
                        leading: Icon(Icons.book_outlined,color: MyColors.off_black,),
                        title: Text('Islamic Book',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Islamicbookfragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.settings,color: MyColors.off_black,),
                        title: Text('Settings',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Settingfragment()));
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.language,color: MyColors.off_black,),
                        title: Text('Language',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Languagesettingsfragment()));
                        },
                      ),



                      ListTile(leading: Icon(Icons.person_search,color: MyColors.off_black,),
                        title: Text('About Us',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),


                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Aboutusfragment()));
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.contact_mail,color: MyColors.off_black,),
                        title: Text('Contact Us',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>Contactusfragment()));
                        },
                      ),


                      ListTile(
                        leading: Icon(Icons.feedback,color: MyColors.off_black,),
                        title: Text('Feedback',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: (){Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>FeedbackFragment()));
                        },
                      ),

                      ListTile(leading: Icon(Icons.logout,color: MyColors.off_black,),
                        title: Text('Log out',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColors.off_black),),

                        onTap: () async{

                          FirebaseAuthService authServices = FirebaseAuthService();

                          await authServices.sign_Out();

                          await authServices.google_signout();

                          SharedPreferences pref = await SharedPreferences.getInstance();
                          await pref.remove('user_id');

                          exit(0);

                        },
                      ),
                    ],
                  ),
                ),




                body: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged, // Sync tab with page swipes
                  children: _screens,
                ),

              )
          )
      ),
    );
  }
}
