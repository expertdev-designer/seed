
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

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.08,),
            Row(
              children: [
                SizedBox(width: width*0.05,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(),),);
                  },
                    child: Image.asset(AppImages.backArrowBlack)),
                SizedBox(width: width*0.25,),
                Text(AppStrings.schedule,
                  style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w600,color: AppColors.textColorBlack),
                ),
              ],
            ),
            SizedBox(height: height*0.03,),
            Container(
              width: width*0.88,
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
            SizedBox(height: height*0.03,),

            Container(
              width: width*0.88,
              child: TextField(
                maxLines: 7,
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: AppColors.textColorLightGrey,
                  hintText: AppStrings.desc,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.03,),
            
            Padding(
              padding:  EdgeInsets.only(
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
            SizedBox(height: height*0.03,),

            Container(
              width: width*0.88,
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
            SizedBox(height: height*0.03,),
            Padding(
              padding:  EdgeInsets.only(
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
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.colorGreen,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    backgroundColor: Colors.white,

                    child: Text(AppStrings.d,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorBlack,
                    ),),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.colorGreen,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    backgroundColor: Colors.white70,
                    child: Text(AppStrings.w,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorBlack,
                    ),),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.colorGreen,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    backgroundColor: Colors.white70,
                    child: Text(AppStrings.m,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorBlack,
                    ),),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.colorGreen,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height*0.035,
                    backgroundColor: Colors.white70,
                    child: Text(AppStrings.y,style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorBlack,
                    ),),
                  ),
                ),

              ],
            ),
            SizedBox(height: height*0.03,),
            Container(
              width: width*0.88,
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
            SizedBox(height: height*0.03,),
            Padding(
              padding: EdgeInsets.only(
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