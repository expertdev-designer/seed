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

  List<int> selectedIndexes = [];

  void handleImageSelection(int index) {
    setState(() {
      // Toggle the selected state of the image
      //selected[index].isTapped = !selected[index].isTapped;
      //selected[index].isTapped = !selected[index].isTapped;
      // Add or remove the item from the selected list based on its selected state
      // if (selected[index].isTapped) {
      //   selected.add(items[index]);
      // } else {
      //   selected.remove(items[index]);
      // }


          if (selectedIndexes.contains(index)) {
            selectedIndexes.remove(index);
          } else {
            selectedIndexes.add(index);
          }


    });
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //width: double.infinity,
        //height: 756,

        child: Column(
          children: [
            SizedBox(height: height*0.08,),
            Row(
              children: [

                SizedBox(width: width*0.05,),
                Container(
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyConnections(),),);
                      },
                      child: Image.asset(AppImages.backArrowBlack)),
                ),
                SizedBox(width: width*0.2,),
                Container(
                  child: Text(AppStrings.newBroadcast,
                    style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w600,color:AppColors.textColorBlack,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width*0.04,),
                Text(AppStrings.addCon,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color:AppColors.textColorLightGrey,
                  ),
                ),
              ],
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
            SizedBox(width: width*0.01,),

            SizedBox(
              height: 80, // Set the height of the horizontal row
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selected.length,
                itemBuilder: (context, index) {
                  return Items(
                    isChecked: index,
                    leading: selected[index].leading,
                    title: selected[index].title,
                    onTap: () {
                      selected[index].isTapped = !selected[index].isTapped;
                      setState(() {});
                    },
                    textColor: AppColors.textColorGrey,
                  );
                },
              ),
            ),

            SizedBox(height: height*0.03,),

            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 0.5,
              color: AppColors.textColorLightGrey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),


            Expanded(
              child: Container(
                 height: MediaQuery.of(context).size.height*0.034,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      leading: GestureDetector(
                        onTap: () {
                          setState(() {
                            items[index].isTapped = !items[index].isTapped;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(items[index].leading,
                              // width: MediaQuery.of(context).size.width * 0.04,
                              // height: MediaQuery.of(context).size.height * 0.04,

                            ),
                            radius: MediaQuery.of(context).size.width * 0.2,

                            child: items[index].isTapped
                                ?  Stack(
                              children: [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: AppColors.colorGreen.withOpacity(0.6),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Transform.scale(
                                          scale: 0.5,
                                          child: SvgPicture.asset(
                                            AppImages.selectsvg,
                                            width: 20, // Set the width of the SVG image
                                            height: 20, // Set the height of the SVG image
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            )
                                : null,
                          ),
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
    );
  }

  Widget? Items(
      {required String leading,
        required String title,
        required VoidCallback onTap,
        required Color textColor,
        int? isChecked}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.colorGreen,
                child: leading.contains(".svg")
                    ? SvgPicture.asset(
                  leading,
                  width: 50,
                  height: 50,
                )
                    : Image.asset(
                  leading,
                  width: 50,
                  height: 50,
                ),
              ),
              isChecked! != null && selected[isChecked].isTapped
              //isChecked != null && isChecked == index && items[index].isSelected
                  ? Positioned(
                top: 30,
                left: 35,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: AppColors.colorGreen.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Transform.scale(
                    scale: 0.8,
                    child: SvgPicture.asset(
                      AppImages.cross,
                      width: 20, // Set the width of the SVG image
                      height: 20, // Set the height of the SVG image
                      color: Colors.white,
                    ),
                  ),
                ),
              )
                  : SizedBox()
            ]),
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

