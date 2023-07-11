import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/data/group_name.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';

import '../utils/images.dart';
import 'my_connections.dart';


class ListItem {
  final String leading;
  final String title;
  final bool trainling;
  bool isTapped;

  ListItem(this.leading, this.title, {required this.trainling, this.isTapped=false});
}

class NewBroadcasts extends StatefulWidget{
  const NewBroadcasts({super.key});

  @override
  _NewBroadcasts createState() => _NewBroadcasts();

}

class _NewBroadcasts extends State<NewBroadcasts>{
  static int selectedIndex=-1;

  final List<ListItem> items = [
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.jack, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.albert, trainling: false),
  ];

  final List<ListItem> selected = [
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.albert, trainling: false),
  ];

  int? checkIndex;
  int? checkIndexBroadcast;
  int? isChecked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //width: double.infinity,
          //height: 756,

          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.03),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyConnections(),),);
                        },
                        child: Image.asset(AppImages.backArrowBlack)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.20),
                    child: Text(AppStrings.newBroadcast,
                      style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w700,color:AppColors.textColorBlack,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,right: MediaQuery.of(context).size.height * 0.23),
                child: Text(AppStrings.addCon,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color:AppColors.textColorLightGrey,
                  ),
                ),
              ),

              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: SizedBox(
              //       //height: MediaQuery.of(context).size.height, // Set the height of the horizontal row
              //       width: MediaQuery.of(context).size.width,
              //       child: ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         //shrinkWrap:true,
              //        // physics: NeverScrollableScrollPhysics(),
              //         itemCount: selected.length,
              //         itemBuilder: (context, index) {
              //           return ListTile(
              //             leading: Container(
              //               width: MediaQuery.of(context).size.width * 0.2,
              //               height: MediaQuery.of(context).size.height * 0.2,
              //               child: CircleAvatar(
              //                 backgroundImage: AssetImage(selected[index].leading),
              //                 radius: MediaQuery.of(context).size.width*0.2,
              //               ),
              //             ),
              //             title: Text(
              //               selected[index].title,
              //               style: GoogleFonts.poppins(
              //                 fontWeight: FontWeight.w700,
              //                 fontSize: 16,
              //               ),
              //             ),
              //             onTap: () {},
              //           );
              //         },
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.0),

                  child: SizedBox(
                    height: 80, // Set the height of the horizontal row
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selected.length,
                      itemBuilder: (context, index) {
                        return Selected(
                          leading: selected[index].leading,
                          title: selected[index].title,
                          onTap: () {
                            if (checkIndex == index)
                              checkIndex = null;
                            else
                              checkIndex = index;
                            setState(() {});
                          },
                          //isImageToggled: isImageToggled,
                          //toggleImage: _toggleImage,
                          textColor: AppColors.textColorLightGrey,
                          //isImageToggled ? AppColors.textColorGrey : AppColors.textColorLightGrey,
                        );
                      },
                    ),
                  ),
                ),

              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 1,
                  color: Colors.grey,
                ),
              ),


              Expanded(
                child: Container(
                   height: MediaQuery.of(context).size.height,
                  child: ListView.separated(

                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
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
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.01,bottom:MediaQuery.of(context).size.height * 0.03,),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyConnections()));
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

class Selected extends StatelessWidget {
  final String leading;
  final String title;
  final VoidCallback onTap;
 // final bool isImageToggled;
  //final VoidCallback toggleImage;
  final Color textColor;
  //int? isChecked;



  const Selected({
    required this.leading,
    required this.title,
    required this.onTap,
   // required this.isImageToggled,
    //required this.toggleImage,
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
              //checkIndexBroadcast != null && isChecked == checkIndexBroadcast
              //isChecked != null && isChecked == index && items[index].isSelected

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