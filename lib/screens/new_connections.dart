import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/my_connections.dart';

class NewConnections extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65,left: 22),
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
                padding: const EdgeInsets.only(top: 57,left:70),
                child: Text('New Connections',
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Color(0xfff3C3C3C),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: CircleAvatar(
                  radius: 32,
                    child: Image.asset('assets/images/albertimage.png'),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text('Denies Dean',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7,),
                    child: Row(
                      children: [
                        Container(
                          width: 123.5,
                          height: 32.5,

                          decoration:BoxDecoration(
                            color: Color(0xfff01C601),
                            borderRadius: BorderRadius.circular(4.2),
                          ),
                          child: Center(
                            child: Text('Accept',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Container(
                            width: 123.5,
                            height: 32.5,

                            decoration:BoxDecoration(
                              color: Color(0xfffF5F5F5),
                              borderRadius: BorderRadius.circular(4.2),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text('Reject',
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