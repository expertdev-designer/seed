import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

import 'main.dart';

class TestCode extends StatelessWidget{
  const TestCode({super.key});

  @override
  Widget build(BuildContext context) {
    var _media = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.08, left: MediaQuery
                    .of(context)
                    .size
                    .width * 0.06,),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                    );
                  },
                  child: Image.asset(AppImages.backArrowBlack,
                    width: 25,
                    height: 25,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top:
                MediaQuery.of(context)
        .size
        .height * 0.05, left: MediaQuery
        .of(context)
        .size
        .width * 0.06,
    ),
            child: Text(AppStrings.connection,
              style: GoogleFonts.poppins(
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

}