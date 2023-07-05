import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/schedule.dart';

class SeedDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:55,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule()));
                    },
                      child: Icon(Icons.arrow_back),
                  ),
                  SvgPicture.asset('assets/images/share_icon.svg'),
                ],
              ),
            ),

            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Image.asset('assets/images/albertimage.png',),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10),
                  child: Column(
                    children: [
                      Text('Denis Dean',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text('5 hours ago',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,left: 90),
                  child: SvgPicture.asset('assets/images/profile_icon.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 5),
                  child: Text('14',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:20,),
                  child: Icon(Icons.arrow_drop_down),
                ),

              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Column(
                    children: [
                      Text('Vacation in Brazil',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff3C3C3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text('Seed Type: Trip',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfff3C3C3C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:10,left: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: SvgPicture.asset('assets/images/download_file_icon.svg'),
                      ),
                      Text('Created : July 16,2021'),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Stack(
                children:[
                  Container(
                    child: Image.asset(
                        'assets/images/7.png',
                      width: 377,
                      height: 303,
                      fit: BoxFit.cover,
                    ),
                ),
                  Positioned(
                    top: 25,
                    right: 25,
                    child:Image.asset('assets/images/heart_icon.png'),
                  ),

                  Positioned(
                    right: 25,
                    bottom: 25,
                    child: Image.asset('assets/images/fill.png',
                    ),),
              ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 5),
              child: Text('Arctic fox cub curiously looking in to my camera. Was amazing to spend the last days in the remote areas markup trip',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xfff3C3C3C),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: 800,
                height: 35,
                color: Color(0xffF5F5F5),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('chat(4)',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xfff3C3C3C),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/Oval.png',width: 62,height: 62,),
                    Column(
                      children: [
                        Text('Roy McKenzie',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfff3C3C3C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text('Hi',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  width: 327,
                  height: 2,
                  color: Colors.grey,
                ),

                Row(
                  children: [
                    Image.asset('assets/images/Oval.png',width: 62,height: 62,),
                    Column(
                      children: [
                        Text('Roy McKenzie',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfff3C3C3C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text('Hi',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                     child: Stack(
                       children: [
                        Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.grey[200],
                          ),
                           child: TextField(
                             onChanged: (value) {
                           },
                           decoration: const InputDecoration(
                             hintText: 'Write here..',
                             contentPadding: EdgeInsets.all(16.0),
                             border: InputBorder.none,
                          ),
                        ),
                           ),

                           Positioned(
                             right: 10,
                             bottom: 5,
                               child: TextButton(onPressed: (){},
                                 child: Text('Send',
                                   style: GoogleFonts.poppins(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.green,
                                   ),
                                 ),
                         ),
                           ),
                     ],
                     ),
                 ),

              ],
            ),

          ],
        ),
      ),
    );
  }

}