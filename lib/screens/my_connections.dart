import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seedapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seedapp/screens/new_connections.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/data/search_user.dart';
import 'package:seedapp/utils/app_colors.dart';

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
    ListItem('assets/images/Bitmap.png', 'Albert Smith', trainling: true),
    ListItem('assets/images/albertimage.png', 'Albert Smith', trainling: false),
    ListItem('assets/images/Photographer.png', 'Stehan Park', trainling: false),
    ListItem('assets/images/albertimage.png', 'Oswald Dean', trainling: false),
    ListItem('assets/images/Photographer.png', 'Tomes Joge', trainling: false),
    ListItem('assets/images/albertimage.png', 'Jack Tim', trainling: false),
    ListItem('assets/images/Photographer.png', 'Stehan Park', trainling: false),
    ListItem('assets/images/albertimage.png', 'Oswald Dean', trainling: false),
    ListItem('assets/images/Photographer.png', 'Stehan Park', trainling: false),
  ];


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 756.0,
          child: Column(
            children: [

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 65,left: 22),
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
                    padding: const EdgeInsets.only(top: 57,left:30),
                    child: Text('My Connections',
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
                        padding: const EdgeInsets.only(top: 57,left: 35),
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: AppColors.colorGreen,
                          child: Container(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30),
                        child: SvgPicture.asset('assets/images/Vector.svg'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 57,left:20),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewConnections()));
                      },
                        child: SvgPicture.asset('assets/images/circleaddsign.svg'
                        )
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: 320,
                  height: 36,

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
                padding: const EdgeInsets.only(top:10,right: 270),
                child: Text('Groups',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewGroup(),),);
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.colorGreen,
                            child: SvgPicture.asset(
                              'assets/images/Group.svg', // Replace with your SVG file path
                              width: 30.0, // Set the desired width
                              height: 30.0,
                            ),
                          ),

                          Text('New Group',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Container(
                            width: 50, // Set the desired width
                            height: 50, // Set the desired height
                            child: Image.asset('assets/images/Bitmap.png'),
                          ),
                        ),

                        Text('Mad Family',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          // backgroundColor: Color(0xfff01B701),
                          child: Image.asset(
                            'assets/images/Bitmap.png', // Replace with your SVG file path
                            width: 200.0, // Set the desired width
                            height: 200.0,
                          ),
                        ),

                        Text('Justice le..',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap:(){

                          },
                          child: CircleAvatar(
                            radius: 25,
                            // backgroundColor: Color(0xfff01B701),
                            child: Image.asset(
                              'assets/images/Bitmap.png', // Replace with your SVG file path
                              width: 200.0, // Set the desired width
                              height: 200.0,
                            ),
                          ),
                        ),

                        Text('Back Benc..',
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
                padding: const EdgeInsets.only(top:10,right: 238),
                child: Text('Broadcasts',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color:AppColors.textColorLightGrey,
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xfff01B701),
                          child: Image.asset(
                            'assets/images/Group.png', // Replace with your SVG file path
                            width: 30.0, // Set the desired width
                            height: 30.0,
                          ),
                        ),

                        Text('New Broad..',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            'assets/images/Group.png', // Replace with your SVG file path
                            width: 30.0, // Set the desired width
                            height: 30.0,
                          ),
                        ),

                        Text('Developer..',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            'assets/images/Group.png', // Replace with your SVG file path
                            width: 30.0, // Set the desired width
                            height: 30.0,
                          ),
                        ),

                        Text('Designer..',
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.colorGreen,
                          child: Image.asset(
                            'assets/images/Group.png', // Replace with your SVG file path
                            width: 30.0, // Set the desired width
                            height: 30.0,
                          ),
                        ),

                        Text('Sales Team',
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
                padding: const EdgeInsets.only(top:10,right: 210),
                child: Text('Connections',
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
                          width: 62.63,
                          height: 62.39,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(items[index].leading),
                            radius: 100,
                          ),
                        ),
                        title: Text(
                          items[index].title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        trailing: const Column(
                          children: [
                            Icon(Icons.perm_contact_cal,color: AppColors.contactIconClr),
                            Text('India'),
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