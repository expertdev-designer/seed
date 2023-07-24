import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/models/login_page.dart';
import 'package:seedapp/screens/verify_email.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/custom_button.dart';
import '../utils/images.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


  void _onButtonPressed(BuildContext context) {
    print("Button pressed!");
    Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyEmail()));
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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


          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_back,
                      size: 24, color: Colors.white),
                ),
                SizedBox(width: width*0.25,),
              ],
            ),
          ),

          Column(
            children: [

              SizedBox(height: height*0.16,),
              AppText(
                text: AppStrings.forgotpwd,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),

              Center(
                child: Container(
                  width: width*0.9,
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 15),
                  child: AppText(
                    text: AppStrings.entermailtext,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(height: height*0.1),

              CustomTextField(
                labelText: AppStrings.email,
                obscureText: false,
              ),


              SizedBox(height: 40),
              CustomButton(
                text: AppStrings.done,
                onPressed: () => _onButtonPressed(context),
                color: AppColors.colorButton,
                width: 300.0,
                height: 50.0,
              ),
              SizedBox(height: 10),

            ],
          ),
        ],
      ),
    );
  }


  Widget CustomTextField(
      {required String labelText,
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
