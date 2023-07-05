
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/new_group.dart';
import 'package:seedapp/utils/app_colors.dart';

class GroupName extends StatefulWidget{
  const GroupName({super.key});

  @override
  _GroupName createState() => _GroupName();

}

class _GroupName extends State<GroupName>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewGroup()));
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50,left: 20),
                      child: Image.asset('assets/images/back_arrow.png'),
                    )),

                Padding(
                  padding: const EdgeInsets.only(top: 57,left:70),
                  child: Text('New Group ',
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ),

              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: CircleAvatar(
                    radius: 25,
                      child: Image.asset('assets/images/Vector.png')),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    width: 230,
                    height: 100,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Group Name',
                        labelStyle: TextStyle(color: AppColors.textColorLightGrey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text('Connections: 8',
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
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(
                          'assets/images/albertimage.png', // Replace with your SVG file path
                          width: 200.0, // Set the desired width
                          height: 200.0,
                        ),
                      ),

                      Text('Albert Smi..',
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
                        child:Image.asset('assets/images/Photographer.png'),
                      ),

                      Text('Stehan Pa..',
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
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(
                          'assets/images/albertimage.png', // Replace with your SVG file path
                          width: 200.0, // Set the desired width
                          height: 200.0,
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
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                          child: Image.asset('assets/images/albertimage.png'),
                      ),
                      Text('Back Benc..',
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                            fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/Bitmap.png'),
                      ),
                      Text('Justice le..',
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/albertimage.png'),
                      ),
                      Text('Albert Smi..',
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/images/Photographer.png'),
                      ),
                      Text('Stehan Pa..',
                        style:GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight:FontWeight.w600,
                          color: AppColors.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 310,bottom: 24),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupName()));
              },
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.only(top: 1),
                    fixedSize: Size(300, 50),
                    backgroundColor: AppColors.colorButton,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
                ), child:  Text('Done',
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
}