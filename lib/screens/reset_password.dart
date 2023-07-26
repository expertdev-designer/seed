// reset_password_verification.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/images.dart';

class ResetPassword extends StatelessWidget {
  final String email;

  ResetPassword({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Positioned(
           top: 80,
             left: 0,
             right: 0,
             child: Column(
               children: [
                 SvgPicture.asset(AppImages.logosvg,
                 ),
                 AppText(
                   text: AppStrings.seed,
                   fontSize: 15,
                   fontWeight: FontWeight.normal,
                   color: AppColors.textColorBlack,
                   textAlign: TextAlign.center,
                 ),
               ],
             ),
         ),
         SizedBox(height: 20),
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
