import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/utils/app_colors.dart';

import '../utils/app_strings.dart';
import '../utils/images.dart';

class ListItem {
  final String leading;
  final String title;
  bool subtitle;
  bool isButtonVisible;
  final bool trainling;

  ListItem(this.leading, this.title, {this.subtitle =false,this.isButtonVisible = false, required this.trainling});
}

class Connections extends StatefulWidget {
  Connections({Key? key});

  @override
  _ConnectionsState createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  final List<ListItem> items = [
    ListItem(AppImages.profileImage2, AppStrings.you, trainling: true),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var _media = MediaQuery.of(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            SizedBox(height: height*0.07,),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width* 0.06,
                     ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>MyHomePage(),
                      ),
                      );
                    },
                    child: Image.asset(AppImages.backArrowBlack,
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                SizedBox(width: width*0.2,),
                 Text(AppStrings.connection,
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                 SizedBox(width: width*0.15,),
                 SvgPicture.asset(AppImages.circleAddSign,
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            //Text('hello'),


            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      //Text('hello'),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == index) {
                              selectedIndex = -1;
                            } else {
                              selectedIndex = index;
                            }
                          });
                        },
                        child: Container(
                          //color: Colors.lightBlue,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                // height: MediaQuery.of(context).size.height * 0.10,
                                // width: MediaQuery.of(context).size.width * 0.15,
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(items[index].leading,
                                    // width: MediaQuery.of(context).size.width * 0.04,
                                    // height: MediaQuery.of(context).size.height * 0.04,
                                  ),
                                  radius: MediaQuery.of(context).size.width * 0.2,
                                  backgroundColor: Colors.lightBlue,
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          items[index].title,
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                        if (items[index].trainling)
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Container(
                                              width: 80,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: AppColors.lightGreen,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  AppStrings.grpadmin,
                                                  style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 9,
                                                      color:AppColors.textColorGrey
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    SizedBox(height: 1),
                                    if (selectedIndex == index)
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.37,
                                        height: MediaQuery.of(context).size.height * 0.05,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(4.2),
                                          border: Border.all(color: Colors.black26),
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {

                                                if (index == 0) {
                                                  return Dialog(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: Container(
                                                      height: MediaQuery.of(context).size.height * 0.27,
                                                      width: MediaQuery.of(context).size.width * 0.3,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              top: MediaQuery.of(context).size.height * 0.03,
                                                              left: MediaQuery.of(context).size.height * 0.020,
                                                            ),
                                                            child: Text(
                                                              AppStrings.confirm,
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.w600,
                                                                color: AppColors.textColorBlack,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              top: MediaQuery.of(context).size.height * 0.01,
                                                              left: MediaQuery.of(context).size.height * 0.03,
                                                              right: MediaQuery.of(context).size.height * 0.03,
                                                              bottom: MediaQuery.of(context).size.height * 0.03,
                                                            ),
                                                            child: Text(
                                                              AppStrings.DltPerson,
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.w500,
                                                                color: AppColors.textColorGrey,
                                                              ),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: double.infinity,
                                                            height: 0.8,
                                                            color: Colors.grey,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(context).size.height * 0.02,
                                                                  left: MediaQuery.of(context).size.height * 0.05,
                                                                  bottom: MediaQuery.of(context).size.height * 0.02,
                                                                  right: MediaQuery.of(context).size.height * 0.02,
                                                                ),
                                                                child: Text(
                                                                  AppStrings.cancel,
                                                                  style: GoogleFonts.poppins(
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: AppColors.textColorRed,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  left: MediaQuery.of(context).size.height * 0.04,
                                                                  right: MediaQuery.of(context).size.height * 0.04,
                                                                ),
                                                                child: Container(
                                                                  // width: MediaQuery.of(context).size.width * 0.003,
                                                                  // height: MediaQuery.of(context).size.height * 0.072,
                                                                  width: 0.8,
                                                                  height:58.1,
                                                                  color: AppColors.textColorLightGrey,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top: MediaQuery.of(context).size.height * 0.02,
                                                                  left: MediaQuery.of(context).size.height * 0.02,
                                                                  bottom: MediaQuery.of(context).size.height * 0.02,
                                                                  right: MediaQuery.of(context).size.height * 0.02,
                                                                ),
                                                                child: Text(
                                                                  AppStrings.ok,
                                                                  style: GoogleFonts.poppins(
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: AppColors.textColorBlue,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }
                                                else{
                                                return Dialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  ),
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height * 0.27,
                                                    width: MediaQuery.of(context).size.width * 0.3,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: height*0.03,),
                                                        SizedBox(width: width*0.02,),
                                                        Text(
                                                          AppStrings.confirm,
                                                          style: GoogleFonts.poppins(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w600,
                                                            color: AppColors.textColorBlack,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                            top: MediaQuery.of(context).size.height * 0.01,
                                                            left: MediaQuery.of(context).size.height * 0.03,
                                                            right: MediaQuery.of(context).size.height * 0.03,
                                                            bottom: MediaQuery.of(context).size.height * 0.03,
                                                          ),
                                                          child: Text(
                                                            AppStrings.RmvConnect,
                                                            style: GoogleFonts.poppins(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500,
                                                              color: AppColors.textColorGrey,
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: double.infinity,
                                                          height: 0.8,
                                                          color: Colors.grey,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top: MediaQuery.of(context).size.height * 0.02,
                                                                left: MediaQuery.of(context).size.height * 0.05,
                                                                bottom: MediaQuery.of(context).size.height * 0.02,
                                                                right: MediaQuery.of(context).size.height * 0.02,
                                                              ),
                                                              child: Text(
                                                                AppStrings.cancel,
                                                                style: GoogleFonts.poppins(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: AppColors.textColorRed,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                left: MediaQuery.of(context).size.height * 0.04,
                                                                right: MediaQuery.of(context).size.height * 0.04,
                                                              ),
                                                              child: Center(
                                                                child: Container(
                                                                  //width: MediaQuery.of(context).size.width * 0.003,
                                                                  //height: MediaQuery.of(context).size.height*0.075,
                                                                  width: 0.6,
                                                                  height:58.1,
                                                                  color: Colors.grey,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top: MediaQuery.of(context).size.height * 0.02,
                                                                left: MediaQuery.of(context).size.height * 0.02,
                                                                bottom: MediaQuery.of(context).size.height * 0.02,
                                                                right: MediaQuery.of(context).size.height * 0.02,
                                                              ),
                                                              child: Text(
                                                                AppStrings.ok,
                                                                style: GoogleFonts.poppins(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: AppColors.textColorBlue,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }
                                                },
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(50, 20),
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Text(
                                            AppStrings.remove,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.textColorBlack,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                             // if (!items[index].trainling)
                                Column(
                                  children: [
                                    Icon(Icons.perm_contact_cal, color: AppColors.contactIconClr),
                                    Text(AppStrings.india,
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 20,
                    endIndent: 20,
                    height: 1,
                    thickness: 1,
                  );
                },
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }



}
