import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HomeScreen/HomeScreen.dart';
import '../myColors.dart';

class Islamicbookfragment extends StatefulWidget {
  const Islamicbookfragment({super.key});

  @override
  State<Islamicbookfragment> createState() => _IslamicbookfragmentState();
}

class _IslamicbookfragmentState extends State<Islamicbookfragment> {
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

                child: Text('Islamic Book',
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
