import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/models/login_page.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/custom_button.dart';
import '../utils/images.dart';

class VerifyEmail extends StatefulWidget {

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _onButtonPressed(BuildContext context) async {
    User? user = _auth.currentUser;
    if (user != null) {
      await user.sendEmailVerification();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification Email Sent'),
            content: Text(
              'An email has been sent to ${user.email}. Please check your email and follow the link to verify your account.',
            ),
            actions: <Widget>[
              CustomButton(
                text: AppStrings.ok,
                onPressed: (){},
                color: AppColors.colorButton,
                width: 100.0,
                height: 35.0,
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.bgimg,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),

          Positioned(
            top:40,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_back, size: 24, color: Colors.white),
            ),
          ),

          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: AppStrings.verify,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: width * 0.9,
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
                    child: AppText(
                      text: AppStrings.checkemail,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],
              ),
            ),
          ),

          Positioned(
            top: 310,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(AppImages.email
                  ),
                  SizedBox(height: height*0.15,),
                  CustomButton(
                    text: AppStrings.done,
                    onPressed: () => _onButtonPressed(context),
                    color: AppColors.colorButton,
                    width: 300.0,
                    height: 50.0,
                  ),
                ],
              ),

          ),

          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: AppText(
              text: AppStrings.resend,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: AppColors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 2.0,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget AppText({
    required String text,
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.white,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
