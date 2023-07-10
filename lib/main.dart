import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/connection_list.dart';
import 'package:seedapp/models/connections.dart';
import 'package:seedapp/screens/my_connections.dart';
import 'package:seedapp/data/schedule.dart';
import 'package:seedapp/screens/seed_detail.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home://Schedule(),
      //  Connections(),
       const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final  List<String> images=[
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image5,
    AppImages.image6,
    AppImages.image7,
    AppImages.image8,
    AppImages.image9,
    AppImages.image10,
    AppImages.image11,
    AppImages.image12,
  ];



  @override
  Widget build(BuildContext context) {
    var _media=MediaQuery.of(context);
    //MediaQuery.of(context).size.height;

    //return LayoutBuilder(
      //builder: (BuildContext context, BoxConstraints constraints) {
        //if(constraints.maxWidth<768) {
          return Scaffold(
            // appBar: AppBar(
            //
            //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            //
            //   //title: Text(),
            // ),
            body: Stack(
              children: <Widget>[
                Image.asset(AppImages.topImage,
                      width: _media.size.width*1.0,
                      height: _media.size.height*0.3,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    child: Column(

                      children: <Widget>[

                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.05, left: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.004,),
                              child: SizedBox(
                                height: 25,
                                width: 25,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => Schedule(),
                                    ),
                                    );
                                  },
                                  child: const Icon(Icons.arrow_back, size: 23,
                                      color: Colors.white),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.03,
                                left: _media.size.width * 0.58,),
                              child: Container(
                                //alignment: Alignment.center,
                                //height: 24.96,
                                //width: 24.55,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.03,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.03,

                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            ConnectionList(),),);
                                    },
                                    child: Image.asset(
                                      AppImages.seedLogo, width: 20,
                                      height: 20,)),
                                //child:SvgPicture.asset('assets/images/Fill22.svg'),),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.03, left: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.08),
                              child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                          child: Container(
                                            height: 178,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.only(
                                                    top: MediaQuery.of(context).size.height*0.03,
                                                    left: MediaQuery.of(context).size.height*0.020,
                                                  ),
                                                  child: Text(
                                                    AppStrings.confirm,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700,
                                                      color: AppColors.textColorBlack,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: MediaQuery.of(context).size.height*0.01,
                                                    left: MediaQuery.of(context).size.height*0.03,
                                                    right:MediaQuery.of(context).size.height*0.03,
                                                    bottom:MediaQuery.of(context).size.height*0.03,
                                                  ),
                                                  child: Text(
                                                    AppStrings.AltDelete,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: AppColors.textColorGrey,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 0.8,
                                                  color: Colors.grey,
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.05,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                        AppStrings.cancel,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorRed,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:  EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.height*0.04,
                                                        right: MediaQuery.of(context).size.height*0.04,
                                                      ),
                                                      child: Container(
                                                        width: MediaQuery.of(context).size.width*0.003,
                                                        height: MediaQuery.of(context).size.height*0.067,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.02,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                        AppStrings.ok,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorBlue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),


                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                      AppImages.deleteIcon)),
                            ),


                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.027,),
                          child: Stack(
                            children: [
                              SizedBox(
                                //width: 90,
                                //height: 90,
                                //width: constraints.maxWidth * 0.2,
                                //height: constraints.maxWidth * 0.2,
                                child: Image.asset(AppImages.profileImage),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 5,
                                // bottom: constraints.maxWidth * 0.000,
                                //right: constraints.maxWidth * 0.005,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                          child: Container(
                                            height: 200,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: MediaQuery.of(context).size.height*0.0,
                                                       decoration: const BoxDecoration(
                                                         borderRadius: BorderRadius.only(
                                                           topLeft: Radius.circular(5.0),
                                                           topRight: Radius.circular(5.0),),
                                                         color: AppColors.colorGreen,
                                                       ),
                                                       child: Padding(
                                                         padding:  EdgeInsets.only(
                                                           top: MediaQuery.of(context).size.height*0.03,
                                                           left: MediaQuery.of(context).size.height*0.03,
                                                         ),
                                                         child: Text(
                                                             AppStrings.entergroupname,
                                                           style: GoogleFonts.poppins(
                                                             fontSize: 15,
                                                             fontWeight: FontWeight.w300,
                                                             color: Colors.white,
                                                           ),
                                                         ),
                                                       ),
                                                ),
                                                ),
                                                Padding(
                                                  padding:  EdgeInsets.only(
                                                    top: MediaQuery.of(context).size.height*0.03,
                                                    left: MediaQuery.of(context).size.height*0.03,
                                                    bottom: MediaQuery.of(context).size.height*0.03,
                                                    right: MediaQuery.of(context).size.height*0.03,
                                                  ),
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width * 0.9,
                                                    height: MediaQuery.of(context).size.height * 0.05,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                        labelText: 'Group Name',
                                                        labelStyle:GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w300,
                                                          color: AppColors.textColorLightGrey,
                                                        ) ,
                                                        border: const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:Colors.white70,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 0.8,
                                                  color: Colors.grey,
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.05,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                          AppStrings.cancel,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorRed,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:  EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.height*0.04,
                                                        right: MediaQuery.of(context).size.height*0.04,
                                                      ),
                                                      child: Container(
                                                        width: MediaQuery.of(context).size.width*0.003,
                                                        height: MediaQuery.of(context).size.height*0.067,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.02,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                          AppStrings.ok,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorBlue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),


                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                    AppImages.editIcon, width: 28,
                                    height: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.005, left: MediaQuery
                              .of(context)
                              .size
                              .width * 0.30,),
                          child: Row(
                            children: [
                              Text(
                                AppStrings.madfmly,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.005,),
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                          child: Container(
                                            height: 200,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height*0.0,
                                                    decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(5.0),
                                                        topRight: Radius.circular(5.0),),
                                                      color: AppColors.colorGreen,
                                                    ),
                                                    child: Padding(
                                                      padding:  EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.03,
                                                        left: MediaQuery.of(context).size.height*0.03,
                                                      ),
                                                      child: Text(
                                                        AppStrings.entergroupname,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w300,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:  EdgeInsets.only(
                                                    top: MediaQuery.of(context).size.height*0.03,
                                                    left: MediaQuery.of(context).size.height*0.03,
                                                    bottom: MediaQuery.of(context).size.height*0.03,
                                                    right: MediaQuery.of(context).size.height*0.03,
                                                  ),
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width * 0.9,
                                                    height: MediaQuery.of(context).size.height * 0.05,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                        labelText: 'Group Name',
                                                        labelStyle:GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w300,
                                                          color: AppColors.textColorLightGrey,
                                                        ) ,
                                                        border: const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:Colors.white70,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 0.8,
                                                  color: Colors.grey,
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.05,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                        AppStrings.cancel,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorRed,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:  EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.height*0.04,
                                                        right: MediaQuery.of(context).size.height*0.04,
                                                      ),
                                                      child: Container(
                                                        width: MediaQuery.of(context).size.width*0.003,
                                                        height: MediaQuery.of(context).size.height*0.067,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: MediaQuery.of(context).size.height*0.02,
                                                        left: MediaQuery.of(context).size.height*0.02,
                                                        bottom: MediaQuery.of(context).size.height*0.02,
                                                        right: MediaQuery.of(context).size.height*0.02,
                                                      ),
                                                      child: Text(
                                                        AppStrings.ok,
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.textColorBlue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                    AppImages.editIcon, width: 20,
                                    height: 20,),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04, top: MediaQuery
                      .of(context)
                      .size
                      .height * 0.01,),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.32, left: MediaQuery
                            .of(context)
                            .size
                            .height * 0.05, right: MediaQuery
                            .of(context)
                            .size
                            .height * 0.01,),
                        child: Column(
                          children: [
                            Text('24',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => MyConnections()));
                              },
                              child: Text(
                                AppStrings.totalseed, style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.underline
                              ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery
                            .of(context)
                            .size
                            .height * 0.020,),
                        child: VerticalDivider(
                          thickness: 1,
                          width: 0.5,
                          indent: MediaQuery
                              .of(context)
                              .size
                              .height * 0.33,
                          endIndent: MediaQuery
                              .of(context)
                              .size
                              .height * 0.61,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.32, left: MediaQuery
                            .of(context)
                            .size
                            .height * 0.03, right: MediaQuery
                            .of(context)
                            .size
                            .height * 0.01,),
                        child: Column(
                          children: [
                            Text('14', style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),),
                            // Text('Connections',style: GoogleFonts.poppins(
                            //     fontSize: 15,
                            //     fontWeight: FontWeight.w300,
                            //   decoration: TextDecoration.underline
                            // ),),
                            InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Connections(),
                                  ),
                                  );
                                },
                                child: Text(AppStrings.connection,
                                  style: GoogleFonts.poppins(fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      decoration: TextDecoration.underline),))
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: //const EdgeInsets.only(top: 331),
                  EdgeInsets.only(top: MediaQuery
                      .of(context)
                      .size
                      .height * 0.4,),
                  child: GridView.builder(itemBuilder: (context, index) {
                    return Image.asset(images[index]);
                  }, itemCount: images.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      mainAxisSpacing: 8.0, // Spacing between rows
                      crossAxisSpacing: 8.0, // Spacing between columns
                      childAspectRatio: 1.0, // Aspect ratio of each grid item
                    ),
                  ),)
                //     children: [
                //       Container(
                //        // width: 100,
                //         //height: 100,
                //         //width: _media.size.width*0.32,
                //         //height: _media.size.height*0.32,
                //         child: Image.asset('assets/images/1.png',
                //           //width: _media.size.width*0.5,
                //           //height: _media.size.height*0.5,
                //         ),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/7.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/13.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/2.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         child: Image.asset('assets/images/8.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/14.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/3.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/9.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/15.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/4.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/10.png'),
                //       ),
                //       Container(
                //         //width: 100,
                //         //height: 100,
                //         width: constraints.maxWidth * 0.1,
                //         height: constraints.maxWidth * 0.1,
                //         child: Image.asset('assets/images/16.png'),
                //       ),
                //     ],
                //   ),
                // ),

                // Padding(
                //   padding: const EdgeInsets.only(top:331 ),
                //   child: InkWell(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>SeedDetail()));
                //     },
                //       child: SingleChildScrollView(
                //           child: Image.asset(
                //             'assets/images/Photo-library.png',
                //             width: double.infinity,
                //             fit: BoxFit.cover,
                //           ),
                //       ),
                //   ),
                // ),
              ],
            ),

            // This trailing comma makes auto-formatting nicer for build methods.
          );
      //  };
     // }
   // );
  }
}
