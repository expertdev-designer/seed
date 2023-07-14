import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

class GroupName extends StatefulWidget {
  const GroupName({super.key});

  @override
  _GroupName createState() => _GroupName();
}

class _GroupName extends State<GroupName> {
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
          //SizedBox(height: MediaQuery.of(context).size.height * 0.001),
          GroupNameField(),
          //SizedBox(height: MediaQuery.of(context).size.height * 0.001),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
            child: Text(
              AppStrings.connections8,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.textColorLightGrey,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.002),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Row(
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
                  imagePath: AppImages.profileImage,
                  memberName: AppStrings.justice,
                ),
                GroupMembersRow(
                  imagePath: AppImages.profileImage2,
                  memberName: AppStrings.backbenc,
                ),
              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(left: 5,right: 3),
            child: Row(
              children: [
                GroupMembersRow(
                  imagePath: AppImages.profileImage2,
                  memberName: AppStrings.backbenc,
                ),
                GroupMembersRow(
                  imagePath: AppImages.profileImage,
                  memberName: AppStrings.justice,
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
          ),



          SizedBox(height: MediaQuery.of(context).size.height * 0.4),
          Padding(
            padding:  EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.height * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.03
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupName()),
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
            left: MediaQuery.of(context).size.width * 0.25,
          ),
          child: Text(
            AppStrings.newgroup,
            style: GoogleFonts.poppins(
              fontSize: 21,
              fontWeight: FontWeight.w600,
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
            child: Image.asset(AppImages.camera),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
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
                  color: AppColors.textColorLightGrey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
