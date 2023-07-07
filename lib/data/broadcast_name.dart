import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/connection_list.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

import 'group_name.dart';

class BroadcastName extends StatefulWidget {
  const BroadcastName({super.key});

  @override
  _BroadcastName createState() => _BroadcastName();
}

class _BroadcastName extends State<BroadcastName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewGroup()),
              );
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.002),
          GroupNameField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.001),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
            child: Text(
              AppStrings.connections4,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.textColorLightGrey,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.002),
          Row(
            children: [
              GroupMembersRow(
                imagePath: AppImages.profileImage2,
                memberName: AppStrings.albertsmi,
              ),
              GroupMembersRow(
                imagePath: AppImages.profileImage3,
                memberName: AppStrings.stehanpa,
              ),
              GroupMembersRow(
                imagePath: AppImages.profileImage2,
                memberName: AppStrings.albertsmi,
              ),
              GroupMembersRow(
                imagePath: AppImages.profileImage3,
                memberName: AppStrings.stehanpa,
              ),
            ],
          ),


          SizedBox(height: MediaQuery.of(context).size.height * 0.5),
          Padding(
            padding:  EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
                bottom: MediaQuery.of(context).size.height * 0.03
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnectionList()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 50),
                backgroundColor: AppColors.colorButton,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              child: Text(
                AppStrings.done,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final VoidCallback onTap;

  const CustomAppBar({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Image.asset(AppImages.backArrowBlack),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.20,
          ),
          child: Text(
            AppStrings.newBroadcast,
            style: GoogleFonts.poppins(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: AppColors.textColorBlack,
            ),
          ),
        ),
      ],
    );
  }
}

class GroupNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
          child: CircleAvatar(
            radius: 25,
            child: Image.asset(AppImages.groupIcon,width: 30,height: 30,),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
          child: Container(
            width: 230,
            height: 100,
            child:  TextField(
              decoration: InputDecoration(
                labelText: AppStrings.braodcastname,
                labelStyle: const TextStyle(color: AppColors.textColorLightGrey),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.colorGreen),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.colorGreen),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GroupMembersRow extends StatelessWidget {
  final String imagePath;
  final String memberName;

  const GroupMembersRow({required this.imagePath, required this.memberName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.035,
                child: Image.asset(
                  imagePath,
                  width: MediaQuery.of(context).size.width * 2,
                  height: MediaQuery.of(context).size.height * 2,
                ),
              ),
              Text(
                memberName,
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
    );
  }
}
