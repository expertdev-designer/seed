
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

class GroupName extends StatefulWidget{
  const GroupName({super.key});

  @override
  _GroupName createState() => _GroupName();

}

class _GroupName extends State<GroupName>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewGroup()));
                  },
                    child: Padding(
                      padding:  EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.08,
                        left: MediaQuery.of(context).size.width* 0.06,),
                      child: Image.asset(AppImages.backArrowBlack),
                    )),

                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,
                    left:MediaQuery.of(context).size.width * 0.25,),
                  child: Text(AppStrings.newgroup,
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ),

              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.05,),
                  child: CircleAvatar(
                    radius: 25,
                      child: Image.asset(AppImages.camera)),
                ),

                Padding(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.07),
                  child: Container(
                    width: 230,
                    height: 100,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Group Name',
                        labelStyle: TextStyle(color: AppColors.textColorLightGrey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.colorGreen),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.colorGreen),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Padding(
              padding:  EdgeInsets.only(right:MediaQuery.of(context).size.width * 0.57),
              child: Text(AppStrings.connections8,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.textColorLightGrey,
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(
                          AppImages.profileImage2, // Replace with your SVG file path
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),

                      Text(AppStrings.albertsmi,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child:Image.asset(AppImages.profileImage3,
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),

                      Text(AppStrings.stehanpa,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(
                          AppImages.profileImage, // Replace with your SVG file path
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),

                      Text(AppStrings.justice,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(
                          AppImages.profileImage2, // Replace with your SVG file path
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),

                      Text(AppStrings.backbenc,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                          child: Image.asset(AppImages.profileImage2,
                            width: MediaQuery.of(context).size.width*2, // Set the desired width
                            height: MediaQuery.of(context).size.height*2,
                          ),
                      ),
                      Text(AppStrings.backbenc,
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                            fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(AppImages.profileImage,
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),
                      Text(AppStrings.justice,
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(AppImages.profileImage2,
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),
                      Text(AppStrings.albertsmi,
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width* 0.03,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height*0.035,
                        child: Image.asset(AppImages.profileImage3,
                          width: MediaQuery.of(context).size.width*2, // Set the desired width
                          height: MediaQuery.of(context).size.height*2,
                        ),
                      ),
                      Text(AppStrings.stehanpa,
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            Padding(
              padding:  EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
                bottom: MediaQuery.of(context).size.height* 0.002,
              ),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupName()));
              },
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.only(top: 1),
                    fixedSize: Size(300, 50),
                    backgroundColor: AppColors.colorButton,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
                ), child:  Text(AppStrings.done,
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