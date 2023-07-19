import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/data/schedule.dart';
import 'package:seedapp/utils/app_colors.dart';

import '../utils/app_strings.dart';
import '../utils/images.dart';

class SeedDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.08,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: width*0.05,),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule()));
                      },
                        child: Icon(Icons.arrow_back),
                    ),
                    SvgPicture.asset(AppImages.shareIconsvg),
                  ],
                ),
              ),
              SizedBox(height: height*0.01,),

              Row(

                children: [
                  SizedBox(width: width*0.03,),
                  Transform.scale(
                    scale: 0.8,
                    child: Image.asset(AppImages.profileImage2,
                      //width: MediaQuery.of(context).size.width*0.2,
                      //height: MediaQuery.of(context).size.height*0.02,
                    ),
                  ),

                  SizedBox(height: height*0.0,),
                  Column(
                    children: [
                      //SizedBox(width: width*0.01,),
                      Text(AppStrings.dennis,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                      //SizedBox(width: width*0.35,),
                      Padding(
                        padding: const EdgeInsets.only(right:20),
                        child: Text(AppStrings.hourago,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColorLightGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: width* 0.32,),
                  SvgPicture.asset(AppImages.profileIcon),
                  SizedBox(width: width* 0.01,),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(AppStrings.num14,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   Icon(Icons.arrow_drop_down),

                ],
              ),
              SizedBox(height: 6,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: width* 0.05,),
                  Column(
                    children: [
                      Text(AppStrings.vactiontxt,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColorBlack,
                        ),
                      ),


                      Padding(
                        padding:  EdgeInsets.only(right: width*0.08),
                        child: Text(AppStrings.seedtypetrip,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColorLightGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: width* 0.18,),

                  Column(
                    children: [
                      //SizedBox(width: width* 0.28,),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width* 0.28,
                        ),
                        child: SvgPicture.asset(AppImages.download),
                      ),
                      Text(AppStrings.datetxt,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColorLightGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6,),

              Stack(
                children:[
                  SizedBox(height: height * 0.004,),
                  Container(
                    child: Image.asset(
                       AppImages.image5,
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width* 1.0,
                      fit: BoxFit.cover,
                    ),
                ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.03,
                    right: MediaQuery.of(context).size.width* 0.06,
                    child:Image.asset(AppImages.heart),
                  ),

                  Positioned(
                    right: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.width* 0.07,
                    child: Image.asset(AppImages.seedLogo,
                    ),),
              ],
              ),
              SizedBox(height: height * 0.01,),

              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width* 0.03,
                ),
                child: Text(AppStrings.seeddetailtxt,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColorGrey,
                  ),
                ),
              ),

              SizedBox(height: height * 0.015,),
              Container(
                width: MediaQuery.of(context).size.width*1.0,
                height: MediaQuery.of(context).size.height*0.05,
                color: AppColors.greyColorButton,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width* 0.8,
                    ),
                    child: Text(AppStrings.chat,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(AppImages.profileImage4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width* 0.15,
                      ),
                      Column(
                        children: [
                          Text(AppStrings.roy,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textColorBlack,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.19),
                            child: Text(AppStrings.hi,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.001,
                    width: MediaQuery.of(context).size.width* 0.9,
                    color: Colors.grey,
                  ),

                  Row(
                    children: [
                      Image.asset(AppImages.profileImage4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width* 0.15,
                      ),
                      Column(
                        children: [
                          Text(AppStrings.roy,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textColorBlack,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.19),
                            child: Text(AppStrings.hi,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: height * 0.01,),
                ],
              ),
              //Stack(children:[ Text('hello')],),

              Container(

                width: width*1.0,
                height: height*0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),  // Shadow color
                      offset: Offset(0, 2),                 // Offset in x and y direction
                      blurRadius: 5,                        // Blur radius
                      spreadRadius: 5,                      // Spread radius
                    ),
                  ],
                ),

                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: width*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          onChanged: (value) {
                          },
                          decoration:  InputDecoration(
                            hintText: AppStrings.writehere,
                            contentPadding: EdgeInsets.all(16.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      right: MediaQuery.of(context).size.height*0.03,
                      bottom: MediaQuery.of(context).size.height*0.02,
                      child: TextButton(onPressed: (){},
                        child: Text(AppStrings.send,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}