import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/utils/app_colors.dart';

class ListItem {
  final String leading;
  final String title;
  bool isButtonVisible;
  final bool trainling;

  ListItem(this.leading, this.title, {this.isButtonVisible = false, required this.trainling});
}

class Connections extends StatefulWidget {
  Connections({Key? key});

  @override
  _ConnectionsState createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  final List<ListItem> items = [
    ListItem('assets/images/albertimage.png', 'Albert Smith', trainling: true),
    ListItem('assets/images/albertimage.png', 'Albert Smith', trainling: false),
    ListItem('assets/images/albertimage.png', 'Albert Smith', trainling: false),
    ListItem('assets/images/albertimage.png', 'Albert Smith', trainling: false),
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var _media = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08,left: MediaQuery.of(context).size.width* 0.06,),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>MyHomePage(),
                      ),
                      );
                    },
                    child: Image.asset('assets/images/back_arrow.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                 Padding(
                   padding:  EdgeInsets.only(top: _media.size.height * 0.08,left:_media.size.width * 0.2,),
                   child: Text('Connections',
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                ),
                 ),
              ],
            ),


            // Rest of the code...

            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.005,),
                child: Container(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == index) {
                              selectedIndex = -1;
                            } else {
                              selectedIndex = index;
                            }
                          });
                        },
                        child: ListTile(
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



                          trailing: selectedIndex == index
                              ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                     onPressed: () {
                                     showDialog(
                                       context: context,
                                       builder: (context){
                                         return Container(
                                           child: AlertDialog(
                                             shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(8.0), // Adjust the radius value as needed
                                             ),
                                             title:  Column(
                                               children: [
                                                 Center(child: Text('Confirmation!',
                                                   style: GoogleFonts.poppins(
                                                     fontWeight: FontWeight.w700,
                                                     fontSize: 22,
                                                   ),
                                                 ),),

                                                 Padding(
                                                   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005,),
                                                   child: Text('Are you sure you want to remove Albert Smith from this group',
                                                     style: GoogleFonts.poppins(
                                                       fontWeight: FontWeight.w700,
                                                       fontSize: 16,
                                                     ),
                                                     textAlign: TextAlign.center,
                                                   ),
                                                 ),

                                                 Padding(
                                                   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009,),
                                                   child: Container(
                                                     width: MediaQuery.of(context).size.width,
                                                     height: MediaQuery.of(context).size.height * 0.001,
                                                     color: Colors.grey,
                                                   ),
                                                 ),

                                                 // const Padding(
                                                 //   padding: EdgeInsets.only(top: 14),
                                                 //   child: Divider(
                                                 //     thickness: 1,
                                                 //     height: 1.0,
                                                 //     color: Color(0xfff979797),
                                                 //   ),
                                                 // ),


                                               ],
                                             ),
                                             actions: [
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   TextButton(onPressed: (){}, child: Text('CANCEL',
                                                     style: GoogleFonts.poppins(
                                                       fontWeight: FontWeight.w700,
                                                       fontSize: 16,
                                                       color: AppColors.textColorRed,
                                                     ),
                                                   )),

                                                   Container(
                                                     width: MediaQuery.of(context).size.width * 0.001,
                                                     height: MediaQuery.of(context).size.height * 0.09,
                                                     color: Colors.grey,
                                                   ),

                                                   // const VerticalDivider(
                                                   //   thickness: 1,
                                                   //   width: 80.0,
                                                   //   //color: Color(0xfff979797),
                                                   //   color: Colors.red,
                                                   //),


                                                   TextButton(onPressed: (){}, child: Text('OK',
                                                     style: GoogleFonts.poppins(
                                                       fontWeight: FontWeight.w700,
                                                       fontSize: 16,
                                                       color: AppColors.textColorBlue,
                                                     ),
                                                   )),
                                                 ],
                                               ),

                                             ],
                                           ),
                                         );
                                     },);

                                    },
                                    child: Text('Remove'),
                            ),
                                ],
                              )
                                : items[index].trainling
                              ? Container(
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                color:  AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(20),
                               ),
                               child: Center(
                                child: Text(
                                'Group Admin',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          )
                              : null,
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
            ),
          ],
        ),
      ),
    );
  }
}
