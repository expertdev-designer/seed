import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/connection_list.dart';
import 'package:seedapp/data/group_name.dart';
import 'package:seedapp/utils/app_colors.dart';


class ListItem {
  final String leading;
  final String title;
  final bool trainling;
  bool isTapped;

  ListItem(this.leading, this.title, {required this.trainling, this.isTapped=false});
}

class NewGroup extends StatefulWidget{
  const NewGroup({super.key});

  @override
  _NewGroup createState() => _NewGroup();

}

class _NewGroup extends State<NewGroup>{
   static int selectedIndex=-1;

  final List<ListItem> items = [
    ListItem('assets/images/Photographer.png', 'You', trainling: true),
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
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 57,left: 24),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionList(),),);
                    },
                    child: Image.asset('assets/images/back_arrow.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 57,left: 91),
                child: Text('New Group',
                  style: GoogleFonts.poppins(fontSize:21 ,fontWeight: FontWeight.w700,color:AppColors.textColorBlack,
                ),
              ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:10,right: 170),
            child: Text('Add Connections',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color:AppColors.textColorLightGrey,
              ),
            ),
          ),

          Expanded(
            child: Container(
             // height: MediaQuery.of(context).size.height,
             child: ListView.separated(

               itemBuilder: (context, index) {
                 return ListTile(
                   onTap: () {
                     setState(() {
                       selectedIndex = index;
                     });
                   },
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

          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 24),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupName()));
            },
              style: ElevatedButton.styleFrom(
                // padding: EdgeInsets.only(top: 1),
                  fixedSize: Size(300, 50),
                  backgroundColor: AppColors.colorButton,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0))
              ), child:  Text('Next',
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
    );
  }

}