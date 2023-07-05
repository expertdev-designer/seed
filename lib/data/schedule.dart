
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/screens/seed_detail.dart';
import 'package:seedapp/utils/app_colors.dart';

class Schedule extends StatelessWidget{

  final seedType=['one','two','three'];

   Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left: MediaQuery.of(context).size.width* 0.06,),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(),),);
                    },
                      child: Image.asset('assets/images/back_arrow.png')),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left:MediaQuery.of(context).size.width * 0.25,),
                  child: Text('Schedule',
                    style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w700,color: AppColors.textColorBlack),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Title of Seed',
                  hintStyle:GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:22,left: 150 ),
              child: Text('Manage Seed Type',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.darkGrey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Seed Type',
                  hintStyle:GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:22,right: 120),
              child: Text('Choose Date and Time',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.darkGrey,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,

                    child: Text('| d',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),),
                  ),

                  CircleAvatar(
                    radius: 25,
                    child: Text('| w',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                  CircleAvatar(
                    radius: 25,
                    child: Text('| m',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                  CircleAvatar(
                    radius: 25,
                    child: Text('| y',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MM DD YYYY",
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:22,left: 115 ),
              child: Text('Set Recurring (Optional)',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color:AppColors.darkGrey,
                  decoration: TextDecoration.underline
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 24),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeedDetail()));
              },
                style: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.only(top: 1),
                  fixedSize: Size(300, 50),
                  backgroundColor: AppColors.colorButton,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
                ), child:  Text('Share Seed',
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