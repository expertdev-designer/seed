import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/models/login_page.dart';
import 'package:seedapp/test.dart';
import 'package:seedapp/utils/app_strings.dart';

import '../utils/images.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.logosvg,width: 100,height: 100,),
            Text(AppStrings.seedapp,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w400,color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}