import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var _media = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left: MediaQuery.of(context).size.width* 0.06,),
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
                 Padding(
                   padding:  EdgeInsets.only(top: _media.size.height * 0.08,left:_media.size.width * 0.2,),
                   child: Text(AppStrings.connection,
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                ),
                 ),
              ],
            ),


            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.000,),
                child: Container(
                  color: Colors.green,
                  child: ListView.separated(

                    // separatorBuilder:(BuildContext context,int index){
                    //   return const Divider(height: 1,);
                    // },
                    itemBuilder: (context, index) {
                      return InkWell(
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
                          color: Colors.lightBlue,
                          padding: EdgeInsets.symmetric(
                              //vertical: 0.01,
                              horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.15,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(items[index].leading),
                                  radius: 50,
                                  //backgroundColor: Colors.lightBlue,
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index].title,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    if (selectedIndex == index)
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.3,
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
                                                return Dialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  ),
                                                  child: Container(
                                                    height: 178,
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
                                                              fontWeight: FontWeight.w700,
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
                                                            AppStrings.RmvConnection,
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
                                                                  fontWeight: FontWeight.w700,
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
                                                                width: MediaQuery.of(context).size.width * 0.003,
                                                                height: MediaQuery.of(context).size.height * 0.067,
                                                                color: Colors.grey,
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
                                                                  fontWeight: FontWeight.w700,
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
                                              color: AppColors.textColorGrey,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (items[index].trainling)
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGreen,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppStrings.grpadmin,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              if (!items[index].trainling)
                                Column(
                                  children: [
                                    Icon(Icons.perm_contact_cal, color: AppColors.contactIconClr),
                                    Text(AppStrings.india),
                                  ],
                                ),
                            ],
                          ),
                        ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }



}
