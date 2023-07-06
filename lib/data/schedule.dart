
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/screens/seed_detail.dart';
import 'package:seedapp/utils/app_colors.dart';

import '../utils/app_strings.dart';
import '../utils/images.dart';

class Schedule extends StatelessWidget{

  final seedType=['one','two','three'];

   Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left: MediaQuery.of(context).size.width* 0.06,),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(),),);
                    },
                      child: Image.asset(AppImages.backArrowBlack)),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left:MediaQuery.of(context).size.width * 0.25,),
                  child: Text(AppStrings.schedule,
                    style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w700,color: AppColors.textColorBlack),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.02,
                  left: MediaQuery.of(context).size.width*0.06,
                  right: MediaQuery.of(context).size.width*0.06),
              child: TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.titleseed,
                  hintStyle:GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.02,
                left: MediaQuery.of(context).size.width*0.06,
                right: MediaQuery.of(context).size.width*0.06),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: AppStrings.desc,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.only(
                  top:MediaQuery.of(context).size.height*0.025,
                  left: MediaQuery.of(context).size.width*0.4,
              ),
              child: Text(AppStrings.manageSeed,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.darkGrey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.02,
                  left: MediaQuery.of(context).size.width*0.06,
                  right: MediaQuery.of(context).size.width*0.06
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.seedtype,
                  hintStyle:GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                top:MediaQuery.of(context).size.height*0.025,
                right: MediaQuery.of(context).size.width*0.35,
              ),
              child: Text(AppStrings.dateTime,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.darkGrey,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,

                    child: Text(AppStrings.d,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),),
                  ),

                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    child: Text(AppStrings.w,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    child: Text(AppStrings.m,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    child: Text(AppStrings.y,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.02,
                  left: MediaQuery.of(context).size.width*0.06,
                  right: MediaQuery.of(context).size.width*0.06
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.mdy,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top:MediaQuery.of(context).size.height*0.025,
                left: MediaQuery.of(context).size.width*0.3,
              ),
              child: Text(AppStrings.setRecurring,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:AppColors.darkGrey,
                  decoration: TextDecoration.underline
                ),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.only(
                top:MediaQuery.of(context).size.height*0.025,
                bottom: MediaQuery.of(context).size.height*0.03,
              ),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeedDetail()));
              },
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.only(top: 1),
                  fixedSize: Size(300, 50),
                  backgroundColor: AppColors.colorButton,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
                ), child:  Text(AppStrings.shareseed,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:Colors.white,
                ),
              ),
              ),
            ),


          ],
        ),
      ),
    );
  }

}