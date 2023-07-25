import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/screens/signup.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/custom_button.dart';
import 'package:seedapp/utils/images.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  void _onButtonPressed(BuildContext context) {
    print("Button pressed!");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.bgimg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.logosvg, width: 55, height: 55),
                Text(
                  AppStrings.seed,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                CustomTextField(
                  labelText: AppStrings.email,
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  labelText: AppStrings.password,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: 'Log In',
                  onPressed: () => _onButtonPressed(context),
                  color: AppColors.colorButton,
                  width: 300.0,
                  height: 50.0,
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ));
                      },
                      child: AppText(
                        text: AppStrings.forgotpwd,
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
              ],
            ),
          ),
          Positioned(
              top: 600,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: AppStrings.signinwith,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.facebook,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Transform.scale(
                          scale: 0.3,
                          child: SvgPicture.asset(AppImages.facebook),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Transform.scale(
                          scale: 0.3,
                          child: SvgPicture.asset(AppImages.googlesvg),
                        ),
                      ),
                      SizedBox(width: 20,),

                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Transform.scale(
                          scale: 0.3,
                          child: SvgPicture.asset(AppImages.apple),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ));
              },
              child: AppText(
                text: AppStrings.bottomtext,
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
          )
        ],
      ),
    );
  }

  Widget CustomTextField({
    required String labelText,
    bool obscureText = false,
  }) {
    return Container(
      width: 300,
      height: 50,
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
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
