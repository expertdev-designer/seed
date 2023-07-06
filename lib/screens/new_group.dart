import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/connection_list.dart';
import 'package:seedapp/data/group_name.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';

import '../utils/images.dart';


class ListItem {
  final String leading;
  final String title;
  final bool trainling;
  bool isTapped;

  ListItem(this.leading, this.title, {required this.trainling, this.isTapped=false});
}

class NewGroup extends StatefulWidget{
  const NewGroup({super.key});

  @override
  _NewGroup createState() => _NewGroup();

}

class _NewGroup extends State<NewGroup>{
   static int selectedIndex=-1;

  final List<ListItem> items = [
    ListItem(AppImages.profileImage3, AppStrings.you, trainling: true),
    ListItem(AppImages.profileImage2, AppStrings.dean, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.jack, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.albert, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.tom, trainling: false),
    ListItem(AppImages.profileImage2, AppStrings.stehan, trainling: false),
    ListItem(AppImages.profileImage3, AppStrings.albert, trainling: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.03),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionList(),),);
                    },
                    child: Image.asset(AppImages.backArrowBlack)),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.20),
                child: Text(AppStrings.newgroup,
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

          Expanded(
            child: Container(
             // height: MediaQuery.of(context).size.height,
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupName()));
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
    );
  }

}