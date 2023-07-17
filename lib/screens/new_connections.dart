import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/my_connections.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

class NewConnections extends StatelessWidget{
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>MyConnections(),
                    ),
                    );
                  },
                  child: Icon(Icons.arrow_back,),

                  // child: Image.asset('assets/images/back_arrow.png',
                  //   width: 25,
                  //   height: 25,
                  // ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left:MediaQuery.of(context).size.width * 0.15),
                child: Text(AppStrings.newCon,
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColorBlack,
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width* 0.05,top: MediaQuery.of(context).size.height* 0.02,),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.09,
                    child: Image.asset(AppImages.profileImage2),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.38),
                    child: Text(AppStrings.dennis,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01,),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          height: MediaQuery.of(context).size.width*0.09,

                          decoration:BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(4.2),
                          ),
                          child: Center(
                            child: Text(AppStrings.accept,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01,),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            height: MediaQuery.of(context).size.width*0.09,

                            decoration:BoxDecoration(
                              color: AppColors.rejectcolor,
                              borderRadius: BorderRadius.circular(4.2),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text(AppStrings.reject,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
        ],
      ),
    );
  }

}