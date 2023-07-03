
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/seed_detail.dart';

class Schedule extends StatelessWidget{

  final seedType=['one','two','three'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57,left: 24),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(),),);
                    },
                      child: Image.asset('assets/images/back_arrow.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 57,left: 91),
                  child: Text('Schedule',
                    style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w700,color: Color(0xfff3C3C3C)),
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
                  color: Color(0xfff535353),
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
                  color: Color(0xfff535353)
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
                  color:Color(0xfff535353),
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
                  backgroundColor: Color(0xfff00C900),
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