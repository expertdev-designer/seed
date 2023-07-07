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
    SearchList(AppImages.profileImage2, AppStrings.john,AppStrings.grp, true),
    SearchList(AppImages.profileImage3, AppStrings.developer,AppStrings.grp, true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.03),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ConnectionList(),
                        ),
                        );
                      },
                      child: Icon(Icons.arrow_back,),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.09,left: MediaQuery.of(context).size.height * 0.02),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:  AppColors.searchbarBackground,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Expanded(
                flex: 2,
                child: Container(
                  child: ListView.separated(itemBuilder: (context,index){
                    //final subtitle = items[index].subtitle ?? '';
                    return ListTile(
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: CircleAvatar(
                          radius: 100,
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

                      trailing: const Icon(
                          Icons.arrow_forward,
                      ),
                    );
                  },
                      separatorBuilder: (context,index){
                        return const Divider(
                          indent: 20,
                          endIndent: 20,
                          height: 50,
                          thickness: 1,
                        );
                     }, itemCount: items.length),
                ),
              ),

               Expanded(
                 flex: 2,
                 child: Column(
                   children: [
                     Container(
                       width: 326,
                       height: 1,
                       color: Color(0xfffD8D8D8),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 25),
                       child: Container(
                         child:  Row(
                           children: [
                             Icon(Icons.search,size: 30,color: Color(0xfff8E8E93)),
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Text('John William',
                                 style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,),
                               ),
                             ),
                           ],
                         )
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 25),
                       child: Container(
                           child:  Row(
                             children: [
                               Icon(Icons.search,size: 30,color: Color(0xfff8E8E93)),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Text('John William',
                                   style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,),
                                 ),
                               ),
                             ],
                           )
                       ),
                     ),

                   ],
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }

}