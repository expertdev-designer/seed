import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/utils/app_strings.dart';

import '../screens/connection_list.dart';
import '../utils/app_colors.dart';
import '../utils/images.dart';

class SearchList{
  final String leading;
  final String title;
  final String subtitle;
  final bool trainling;

  SearchList(this.leading,this.title,this.subtitle,this.trainling);
}

class SearchUser extends StatefulWidget{
  const SearchUser({super.key});

  @override
  _SearchUser createState() => _SearchUser();

}

class _SearchUser extends State<SearchUser>{


  final List<SearchList> items=[
    SearchList(AppImages.profileImage, AppStrings.madfmly,AppStrings.grp, true),
    SearchList(AppImages.profileImage2, AppStrings.john,AppStrings.connection, true),
    SearchList(AppImages.groupIcon, AppStrings.developerT,AppStrings.broadcast, true),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
           Column(
            children: [
              SizedBox(height: height*0.08,),
              Row(
                children: [
                  SizedBox(width: width*0.05,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ConnectionList(),
                      ),
                      );
                    },
                    child: Icon(Icons.arrow_back,),

                  ),
                  //SizedBox(height: height*0.03,),
                  SizedBox(width: width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:  AppColors.searchbarBackground,
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color:AppColors.textColorGrey,),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textColorLightGrey,),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),


              Container(
                height: height*0.32,
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context,index){
                  //final subtitle = items[index].subtitle ?? '';

                  return ListTile(
                    leading: Container(
                      // width: MediaQuery.of(context).size.width * 0.2,
                      // height: MediaQuery.of(context).size.height * 0.15,
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: AppColors.colorGreen,
                        backgroundImage:AssetImage(items[index].leading),),
                    ),
                    title: Text(
                        items[index].title,
                      style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,),
                    ),

                   // subtitle: Text('${items[index].subtitle!}',),

                   //  subtitle: Text(
                   //    items[index].subtitle,
                   //  ),

                    //subtitle: Text(subtitle),
                    subtitle: Text(items[index].subtitle,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.textColorLightGrey,
                      ),
                    ),

                    trailing: const Icon(
                        Icons.arrow_forward,
                    ),
                  );
                },
                    separatorBuilder: (context,index){
                      return const Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 10,
                        thickness: 1,
                      );
                   }, itemCount: items.length),
              ),

               Column(
                 children: [
                   Container(
                     width: 326,
                     height: 1,
                     color: AppColors.whitebg,
                   ),
                   SizedBox(height:height*0.02),

                   Container(
                     child:  Row(
                       children: [
                         SizedBox(width: width*0.08,),
                         Icon(Icons.search,size: 30,color:AppColors.searchicon,),
                         SizedBox(width: width*0.03,),
                         Text('John William',
                           style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,),
                         ),
                       ],
                     )
                   ),
                   SizedBox(height:height*0.02),

                   Container(
                       child:  Row(
                         children: [
                           SizedBox(width: width*0.08,),
                           Icon(Icons.search,size: 30,color: AppColors.searchicon,),
                           SizedBox(width: width*0.03,),
                           Text('John William',
                             style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,),
                           ),
                         ],
                       )
                   ),

                 ],
               ),

            ],
          ),
          ],
        ),
      ),
    );
  }

}