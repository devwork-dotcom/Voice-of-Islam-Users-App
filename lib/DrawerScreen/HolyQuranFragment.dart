import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HomeScreen/HomeScreen.dart';
import '../myColors.dart';

class Holyquranfragment extends StatefulWidget {
  const Holyquranfragment({super.key});

  @override
  State<Holyquranfragment> createState() => _HolyquranfragmentState();
}

class _HolyquranfragmentState extends State<Holyquranfragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:

    WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: [

              Container(
                height: 500.h,
                alignment: Alignment.center,

                child: Text('Holy-Quran Fragment',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp,color: MyColors.blue),),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
