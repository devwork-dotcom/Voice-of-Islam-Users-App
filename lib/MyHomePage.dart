import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:voiceofislam/introductionScreen/intruduction_screen.dart';


class MyHomePage extends StatelessWidget{
  get child => null;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.amber, // Set the status bar color
      statusBarIconBrightness: Brightness.dark, // Set the status bar icon color
      systemNavigationBarColor: Colors.amber, // Set the bottom navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Set the bottom navigation bar icon color
    ));
    // TODO: implement build
    return WillPopScope(
      onWillPop: ()async{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>introduction_screen()));
        return false;
      },
      child: SafeArea

        (child: Scaffold
        (

        backgroundColor: Colors.amber,

        body: Padding(
          padding:  EdgeInsets.only(top: 100,left: 100),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('app_name'.tr, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text('app_title'.tr, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
                Get.updateLocale(Locale('en','US'));

              }, child: Text("English"),),


              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {

                Get.updateLocale(Locale('bn','BD'));

              }, child: Text("Bangla"),),


              Switch(
                  value: false,
                  onChanged: (s){

                  })

            ],

          ),

        ),

      )
      ),
    );
  }

}