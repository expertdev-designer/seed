import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            // side: const BorderSide(
            //     color: AppColors.darkGrey),
            borderRadius:
            BorderRadius.circular(5),
          ),
          primary: color,
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
