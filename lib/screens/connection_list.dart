import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seedapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/data/search_user.dart';
import 'package:seedapp/utils/app_colors.dart';

import '../utils/app_strings.dart';
import '../utils/images.dart';

class ListItem {
  final String leading;
  final String title;
  final bool trainling;
  bool isTapped;

  ListItem(this.leading, this.title, {required this.trainling, this.isTapped=false});
}


class ConnectionList extends StatefulWidget {
  const ConnectionList({super.key});


  @override
    _ConnectionList createState() => _ConnectionList();
}


  class _ConnectionList extends State<ConnectionList> {
  final List<ListItem> items = [
    ListItem(AppImages.profileImage, AppStrings.albert, trainling: true),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.jack, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
  ];


  bool isImageToggled = true;

  void _toggleImage() {
    setState(() {
      isImageToggled = !isImageToggled;
    });
  }


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [

              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.03),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>MyHomePage(),
                        ),
                        );
                      },
                      child: Icon(Icons.arrow_back,),

                      // child: Image.asset('assets/images/back_arrow.png',
                      //   width: 25,
                      //   height: 25,
                      // ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.20),
                    child: Text(AppStrings.sharewith,
                      style: GoogleFonts.poppins(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,

                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.searchbarBackground,
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                      ),
              ),
              ),
                    ),
                  ),
              ),

              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.35),
                child: Text( AppStrings.group,
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
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: InkWell(
                      onTap: (){
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.colorGreen,
                            child: SvgPicture.asset(
                              AppImages.groupsvg, // Replace with your SVG file path
                              width: MediaQuery.of(context).size.width * 0.04,
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                          ),

                          Text(AppStrings.newgroup,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: AppColors.textColorLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: GestureDetector(
                      onTap: _toggleImage,
                      child: Column(
                        children: [
                          CircleAvatar(
                             radius: 25,
                             backgroundColor: AppColors.colorGreen,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            image: DecorationImage(
                              image: isImageToggled
                                  ? AssetImage(AppImages.profileImage)
                                  : AssetImage(AppImages.selectIcon),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                          ),

                          Text(AppStrings.madfmly,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: AppColors.textColorsGrey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          // backgroundColor: Color(0xfff01B701),
                          child: Image.asset(
                            AppImages.profileImage, // Replace with your SVG file path
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),

                        Text(AppStrings.justice,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.textColorsGrey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        InkWell(
                          onTap:(){

                          },
                          child: CircleAvatar(
                            radius: 25,
                            // backgroundColor: Color(0xfff01B701),
                            child: Image.asset(
                              AppImages.profileImage, // Replace with your SVG file path
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                          ),
                        ),

                        Text(AppStrings.backbenc,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.textColorsGrey,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.30),
                child: Text(AppStrings.broadcasts,
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
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            AppImages.groupIcon, // Replace with your SVG file path
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),

                        Text(AppStrings.nBroad,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.textColorLightGrey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:AppColors.colorGreen,
                          child: Image.asset(
                            AppImages.groupIcon, // Replace with your SVG file path
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),

                        Text(AppStrings.developer,
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
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            AppImages.groupIcon, // Replace with your SVG file path
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),

                        Text(AppStrings.designer,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.textColorGrey
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04,top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            AppImages.groupIcon, // Replace with your SVG file path
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),

                        Text(AppStrings.salesT,
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

              Padding(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.25),
                child: Text(AppStrings.myCon,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.textColorLightGrey,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  child: ListView.separated(

                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: CircleAvatar(
                             backgroundImage: AssetImage(items[index].leading),
                             radius: MediaQuery.of(context).size.width*0.2,
                          ),
                        ),
                        title: Text(
                          items[index].title,
                          style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              items[index].isTapped = !items[index].isTapped;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: items[index].isTapped
                                  ? Border.all(
                                color: AppColors.borderColor,
                                width: 2.0,
                              )
                                  : null,
                              shape:BoxShape.rectangle,
                              color: Colors.grey,


                              // image: const DecorationImage(
                              //   image: AssetImage('assets/images/top.png'),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            child: items[index].isTapped
                                ?  Stack(
                              children: [
                                // BackdropFilter(
                                //   filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                                //   child: Container(
                                //     color: Colors.grey.withOpacity(0.3),
                                //   ),
                                // ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child:SvgPicture.asset(AppImages.selectsvg,width: 8,height: 8,color: AppColors.borderColor) ,
                                    // Icon(
                                    //   Icons.check_box,
                                    //   color: Colors.white,
                                    //   size: 18,
                                    // ),
                                  ),
                                ),
                              ],
                            )
                                : null,
                          ),
                        ),
                      );
                      },
                      separatorBuilder: (context, index) {
                         return const Divider(
                           indent: 20,
                           endIndent: 20,
                           height: 50,
                           thickness: 1,
                        );
                      },
                      itemCount: items.length,
                   ),

                ),
              ),


              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,bottom:MediaQuery.of(context).size.height * 0.03,),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchUser()));
                },
                  style: ElevatedButton.styleFrom(
                    // padding: EdgeInsets.only(top: 1),
                      fixedSize: Size(300, 50),
                      backgroundColor: AppColors.colorButton,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
                  ), child:  Text(AppStrings.next,
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
      ),
    );
  }



}