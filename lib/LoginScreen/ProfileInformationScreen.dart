import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voiceofislam/DrawerScreen/AboutUsFragment.dart';
import 'package:voiceofislam/IntroductionScreen/intruduction_screen.dart';
import 'package:voiceofislam/myColors.dart';

class Profileinformationscreen extends StatefulWidget {
  const Profileinformationscreen({super.key});

  @override
  State<Profileinformationscreen> createState() => _ProfileinformationscreenState();
}

class _ProfileinformationscreenState extends State<Profileinformationscreen> {

  String? slectedBloodType;

  // List of blood types
  final List<String> bloodTypes = [
    'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'
  ];

  File? _imageFile; // Holds the selected image
  final ImagePicker _picker = ImagePicker();

  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileImage(); // Load image from SharedPreferences on app start
    _loadProfileImage();
  }

  // Function to load the image from SharedPreferences
  Future<void> _loadProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('profile_image');
    if (imagePath != null && mounted) {
      setState(() {
        _imageFile = File(imagePath);
      });
    }
  }

  // Function to load the image and text fields from SharedPreferences
  Future<void> _loadProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    _nameController.text = prefs.getString('name') ?? '';
    _phoneController.text = prefs.getString('phone') ?? '';
    _emailController.text = prefs.getString('user_mail') ?? '';
    _bloodController.text = prefs.getString('user_blood') ?? '';

    setState(() {
      slectedBloodType = prefs.getString('user_blood') ?? null;
    });
  }

  // Function to save the image path in SharedPreferences
  Future<void> _saveProfileImage(String path) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('profile_image', path);
  }

  // Function to handle image selection from camera or gallery
  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
        await _saveProfileImage(pickedFile.path);
      }
    } catch (e) {
      // Handle any errors here
      print('Error picking image: $e');
    }
  }

  // Function to save the text field values into SharedPreferences
  Future<void> _saveProfileData() async {
    final prefs = await SharedPreferences.getInstance();

    if (_nameController.text.isNotEmpty) {
      prefs.setString('name', _nameController.text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(_nameController.text)),
      );
    }
    if (_phoneController.text.isNotEmpty) {
      prefs.setString('phone', _phoneController.text);
    }

    if (_emailController.text.isNotEmpty) {
      prefs.setString('user_mail', _emailController.text);
    }

    if (slectedBloodType != null) {
      prefs.setString('user_blood', slectedBloodType!);
    }

    // Navigate to the desired screen or perform any other action after saving
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => introduction_screen()), // Navigate to another screen
    );
  }

  @override
  Widget build(BuildContext context) {

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: MyColors.blue_grey,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: MyColors.blue_grey,
        systemNavigationBarIconBrightness: Brightness.light,

      ));

    return SafeArea(child: Scaffold(
      backgroundColor: MyColors.blue_grey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 80.h,),

            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,


              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 120.w, // Adjust the width according to the desired image size
                    height: 120.h, // Adjust the height according to the desired image size
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: MyColors.off_white, // Red border color
                        width: 3.0, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child:_imageFile != null? Image.file(_imageFile!,
                      fit: BoxFit.cover,
                      width: 120.w,
                      height: 120.h,): Image.asset('assets/images/logo.png',fit: BoxFit.cover,),// Replace with the actual image path
                      // Ensures the image fits inside the circle
                    ),



                  ),

                ),
                Positioned(
                  left:190.w ,
                  bottom: -12.w,

                    child:GestureDetector(
                      onTap: (){
                        _showImageSourceActionSheet();

                      },
                      child: CircleAvatar(
                       backgroundColor: MyColors.off_white,
                        radius: 20.r,
                        child: Icon(Icons.camera_alt,color: MyColors.deep_blue,),
                                      ),
                    )
                ),







              ],
            ),


            //Name Field
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(
                    width: 300.w,
                    //height: 50.h, // Set the width of the input field
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: MyColors.deep_blue,
                          // Label color
                        ),
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(color: MyColors.off_white),
                        prefixIcon: Icon(Icons.person, color: MyColors.off_black), // Icon color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when not focused
                            width: 2.0.w,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when focused
                            width: 2.0.w,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue,
                            width: 2.0.w,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.red,
                            width: 2.0.w,
                          ),
                        ),
                        fillColor: MyColors.white,
                        filled: true,
                        errorStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                          height: 0.5.h, // Adjust this value for spacing
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: MyColors.deep_blue, // Text color
                      ),
                      keyboardType: TextInputType.text,

                      cursorColor: MyColors.red, // Cursor color
                    ),
                  ),






                ],
              ),
            ),

            //Phone number
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    width: 300.w,
                    //height: 50.h, // Set the width of the input field
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                          color: MyColors.deep_blue,
                          // Label color
                        ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: MyColors.off_white),
                        prefixIcon: Icon(Icons.phone, color: MyColors.off_black), // Icon color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when not focused
                            width: 2.0.w,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when focused
                            width: 2.0.w,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue,
                            width: 2.0.w,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.red,
                            width: 2.0.w,
                          ),
                        ),
                        fillColor: MyColors.white,
                        filled: true,
                        errorStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                          height: 0.5.h, // Adjust this value for spacing
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: MyColors.deep_blue, // Text color
                      ),
                      keyboardType: TextInputType.phone,

                      cursorColor: MyColors.red, // Cursor color
                    ),
                  ),






                ],
              ),
            ),

            //Email add
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(
                    width: 300.w,
                    //height: 50.h, // Set the width of the input field
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: MyColors.deep_blue,
                          // Label color
                        ),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: MyColors.off_white),
                        prefixIcon: Icon(Icons.mail, color: MyColors.off_black), // Icon color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when not focused
                            width: 2.0.w,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue, // Border color when focused
                            width: 2.0.w,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.deep_blue,
                            width: 2.0.w,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: MyColors.red,
                            width: 2.0.w,
                          ),
                        ),
                        fillColor: MyColors.white,
                        filled: true,
                        errorStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                          height: 0.5.h, // Adjust this value for spacing
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: MyColors.deep_blue, // Text color
                      ),
                      keyboardType: TextInputType.text,

                      cursorColor: MyColors.red, // Cursor color
                    ),
                  ),






                ],
              ),
            ),

            //Blood Type
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.only(left:28.w,right: 45.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  SizedBox(
                    width: 20.w,
                    //height: 50.h,
                    child: Icon(Icons.bloodtype,color: MyColors.red,),
                  ),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      width: 120.w,
                      child: Text('Blood Type : ',style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 20.sp
                      ),),
                    ),
                  ),

                  SizedBox(
                    width: 120.w,
                    height: 50.h, // Set the width of the input field


                    child: Container(

                      decoration: BoxDecoration(
                        border: Border.all(color: MyColors.deep_blue,width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        color: Colors.white,


                      ),

                      child: DropdownButton<String>(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        underline: SizedBox(),
                        isExpanded: true,
                        value: slectedBloodType,
                        hint: Text(
                          'Blood Type',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: MyColors.off_white,
                          ),
                        ),
                        items: bloodTypes.map((String bloodType) {
                          return DropdownMenuItem<String>(
                            value: bloodType,
                            child: Center(
                              child: Text(
                                bloodType,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: MyColors.deep_blue,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            slectedBloodType = newValue;
                          });
                        },
                        dropdownColor: MyColors.grey_white,
                        iconEnabledColor: MyColors.off_white,


                      ),
                    ),
                  ),






                ],
              ),
            ),

            SizedBox(height: 30.h,),

            SizedBox(

              width: 160.w,
              child: GestureDetector(
                onTap: _saveProfileData,
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.blue_grey, // Background color
                    borderRadius: BorderRadius.circular(8.r), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.9), // Shadow color
                        blurRadius: 4, // Blur effect
                        offset: Offset(0, 1), // Offset for the shadow
                      ),
                    ],
                    border: Border.all(
                      color: MyColors.white, // Border color
                      width: 1.w, // Border width
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Saved and Go',
                            style: TextStyle(
                              color: MyColors.white,
                              fontSize: 17.sp,
                            ),

                          ),
                        ),
                        Icon(Icons.double_arrow_sharp,color: MyColors.white,)
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.h,),
            
            Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [


                SizedBox(

                  width: 80.w,
                  child: GestureDetector(
                    onTap: () {Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>introduction_screen()));
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        color: MyColors.blue_grey, // Background color
                        borderRadius: BorderRadius.circular(8.r), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9), // Shadow color
                            blurRadius: 4, // Blur effect
                            offset: Offset(0, 1), // Offset for the shadow
                          ),
                        ],
                        border: Border.all(
                          color: MyColors.white, // Border color
                          width: 1.w, // Border width
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Skip',
                              style: TextStyle(
                                color: MyColors.white,
                                fontSize: 17.sp,
                              ),

                            ),
                            Icon(Icons.double_arrow_sharp,color: MyColors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.w,),
              ],
            ),

            SizedBox(height: 60.h),



          ],
        ) ,
      ),
    ));
  }

  // Function to show an action sheet for picking an image source
  void _showImageSourceActionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

}


