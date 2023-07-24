import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/models/login_page.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/custom_button.dart';
import '../utils/images.dart';

class VerifyEmail extends StatelessWidget {




  void _onButtonPressed(BuildContext context) {
    print("Button pressed!");
    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
              ],
            ),
          ),

          Column(
            children: [
              SizedBox(height: height*0.15,),
               AppText(
               text: AppStrings.verify,
               fontSize: 24,
               fontWeight: FontWeight.normal,
               color: Colors.white,
                 textAlign: TextAlign.center,
              ),

        Center(
          child: Container(
            width: width*0.9,
            //color: Colors.blue,
            padding: const EdgeInsets.only(left: 24,right: 24,top: 10),
            child: AppText(
              text: AppStrings.checkemail,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
          ),
        ),

              //Image.asset(AppImages.email),
              SizedBox(height: height*0.12,),
              Image.asset(AppImages.email),
              SizedBox(height: height*0.15),
              CustomButton(
                text: AppStrings.done,
                onPressed: () => _onButtonPressed(context),
                color: AppColors.colorButton,
                width: 300.0,
                height: 50.0,
              ),
              SizedBox(height: height*0.15),
              AppText(
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
            ],
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
