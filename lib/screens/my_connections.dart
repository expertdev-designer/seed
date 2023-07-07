import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seedapp/data/group_name.dart';
import 'package:seedapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seedapp/screens/new_connections.dart';
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


class MyConnections extends StatefulWidget {
  const MyConnections({super.key});


  @override
  _MyConnections createState() => _MyConnections();
}


class _MyConnections extends State<MyConnections> {


  final List<ListItem> items = [
    ListItem(AppImages.profileImage, AppStrings.albert, trainling: true),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.jack, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
  ];

  final List<ListItem> grp = [
    ListItem(AppImages.profileImage, AppStrings.madfmly, trainling: true),
    ListItem(AppImages.profileImage, AppStrings.justice, trainling: false),
    ListItem(AppImages.profileImage, AppStrings.backbenc, trainling: false),
    ListItem(AppImages.profileImage, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage, AppStrings.tom, trainling: false),
  ];


  final List<ListItem> broad = [
    ListItem(AppImages.groupIcon, AppStrings.developer, trainling: true),
    ListItem(AppImages.groupIcon, AppStrings.designer, trainling: false),
    ListItem(AppImages.groupIcon, AppStrings.salesT, trainling: false),
    ListItem(AppImages.groupIcon, AppStrings.developer, trainling: false),
    ListItem(AppImages.groupIcon, AppStrings.designer, trainling: false),
  ];

  bool isImageToggled = false;

  void _toggleImage() {
    setState(() {
      isImageToggled = !isImageToggled;
    });
  }
  // void changeImage(){
  //   setState(() {
  //     items[index].isTapped
  //         ?  Stack(
  //       children: [
  //
  //         Positioned(
  //           //child: Align(
  //           //alignment: Alignment.center,
  //           child:SvgPicture.asset(AppImages.selectsvg,width: 8,height: 8,color: AppColors.borderColor) ,
  //
  //           //  ),
  //         ),
  //       ],
  //     )
  //         : null;
  // }

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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.03),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>MyHomePage(),
                        ),
                        );
                      },
                      child: Icon(Icons.arrow_back,),

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.10),
                    child: Text(AppStrings.myCon,
                      style: GoogleFonts.poppins(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.08),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width*0.02,
                          backgroundColor: AppColors.colorGreen,
                          child: Container(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.06),
                        child: SvgPicture.asset(AppImages.addPerson,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.05),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewConnections()));
                      },
                        child: SvgPicture.asset(AppImages.circleAddSign,
                        )
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,

                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:  AppColors.searchbarBackground,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.35),
                child: Text(AppStrings.group,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.textColorLightGrey,
                  ),
                ),
              ),

              Stack(
                children:[
                  ReusableRow(
                    leading: AppImages.groupsvg,
                    title: AppStrings.newgroup,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewGroup()));
                    },
                    isImageToggled: isImageToggled,
                    toggleImage: _toggleImage,
                    textColor: AppColors.textColorLightGrey,
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.23),
                    child: Positioned(

                      child: SizedBox(
                        height: 80, // Set the height of the horizontal row
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: grp.length,
                          itemBuilder: (context, index) {
                            return ReusableRow(
                              leading: grp[index].leading,
                              title: grp[index].title,

                              onTap: () {

                                //grp[index]=broad[3];

                              // grpIndex=index;
                                grp[index].isTapped=!grp[index].isTapped;
                                setState(() {
                                  isImageToggled
                                      ? grp[index].leading.contains(AppImages.profileImage)
                                      : (AppImages.profileImage);



                                  //     ?  Stack(
                                  //   children: [
                                  //
                                  //     Positioned(
                                  //       //child: Align(
                                  //         //alignment: Alignment.center,
                                  //         child:SvgPicture.asset(AppImages.selectsvg,width: 8,height: 8,color: AppColors.borderColor) ,
                                  //
                                  //     //  ),
                                  //     ),
                                  //   ],
                                  // )
                                  //     : null;
                                  //Image.asset(AppImages.selectsvg);
                                });
                              },
                              isImageToggled: isImageToggled,
                              toggleImage: _toggleImage,
                              textColor: isImageToggled ? AppColors.textColorGrey : AppColors.textColorLightGrey,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.30),
                child: Text(AppStrings.broadcasts,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color:AppColors.textColorLightGrey,
                  ),
                ),
              ),

              Stack(
                children:[
                  ReusableRow(
                    leading: AppImages.groupIcon,
                    title: AppStrings.broadcasts,
                    onTap: () {},
                    isImageToggled: isImageToggled,
                    toggleImage: _toggleImage,
                    textColor: AppColors.textColorLightGrey,
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.23),
                    child: Positioned(

                      child: SizedBox(
                        height: 80, // Set the height of the horizontal row
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: broad.length,
                          itemBuilder: (context, index) {
                            return ReusableRow(
                              leading: broad[index].leading,
                              title: broad[index].title,
                              onTap: () {},
                              isImageToggled: isImageToggled,
                              toggleImage: _toggleImage,
                              textColor: isImageToggled ? AppColors.textColorGrey : AppColors.textColorLightGrey,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),



              Padding(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.3),
                child: Text(AppStrings.connection,
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
                        trailing:  Column(
                          children: [
                            Icon(Icons.perm_contact_cal,color: AppColors.contactIconClr),
                            Text(AppStrings.india,),
                          ],
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




            ],
          ),
        ),
      ),
    );
  }



}


class ReusableRow extends StatelessWidget {
  final String leading;
  final String title;
  final VoidCallback onTap;
  final bool isImageToggled;
  final VoidCallback toggleImage;
  final Color textColor;



  const ReusableRow({
    required this.leading,
    required this.title,
    required this.onTap,
    required this.isImageToggled,
    required this.toggleImage,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.height * 0.01),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.colorGreen,
              child: leading.contains(AppImages.profileImage)
                  ? SvgPicture.asset(
                leading,
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.04,
              )
                  : Image.asset(
                leading,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}