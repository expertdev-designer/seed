import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/screens/connection_list.dart';
import 'package:seedapp/models/connections.dart';
import 'package:seedapp/screens/my_connections.dart';
import 'package:seedapp/data/schedule.dart';
import 'package:seedapp/screens/seed_detail.dart';
import 'package:seedapp/screens/splash_screen.dart';
import 'package:seedapp/test.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/images.dart';

import 'models/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Show the splash screen for 3 seconds
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (_) =>LoginPage(),
    //           //HomeScreen(),
    //     ),
    //   );
    // });
    //
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: SvgPicture.asset(AppImages.logosvg),
    //     ),
    //   ),
    // );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: //Schedule(),
      //  Connections(),
      SplashScreen(),
      //MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = [
    AppImages.image1,
    AppImages.image5,
    AppImages.image9,
    AppImages.image2,
    AppImages.image6,
    AppImages.image10,
    AppImages.image3,
    AppImages.image7,
    AppImages.image11,
    AppImages.image4,
    AppImages.image8,
    AppImages.image12,
  ];

  @override
  Widget build(BuildContext context) {
    var _media = MediaQuery.of(context);
    var height = MediaQuery.of(context).size.height;
    Widget _topBackgroundCurve() {
      return Container(
        height: height * 0.3,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.topImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _topBackgroundCurve(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.07,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Schedule(),
                            ),
                          );
                        },
                        child: const Icon(Icons.arrow_back,
                            size: 24, color: Colors.white),
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ConnectionList(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                AppImages.seedLogo,
                                width: 24,
                                height: 24,
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                onTap: () {
                                  showRemoveDialog();
                                },
                                child: Image.asset(AppImages.deleteIcon)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Stack(
                  children: [
                    Container(
                      child: Image.asset(AppImages.profileImage),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 5,
                      child: Image.asset(
                        AppImages.editIcon,
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.madfmly,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.005,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width,
                                          height:
                                          MediaQuery.of(context).size.height *
                                              0.0,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                            color: AppColors.colorGreen,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.025,
                                              left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.03,
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
                                        padding: EdgeInsets.only(
                                          top:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                          left:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                          bottom:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                          right:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                        ),
                                        child: Container(
                                          width:
                                          MediaQuery.of(context).size.width *
                                              0.9,
                                          height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: 'Group Name',
                                              labelStyle: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300,
                                                color:
                                                AppColors.textColorLightGrey,
                                              ),
                                              focusedBorder:
                                              const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColors
                                                      .textColorLightGrey,
                                                ), // Set the border color when focused
                                              ),
                                              enabledBorder:
                                              const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: AppColors
                                                      .textColorLightGrey,
                                                ), // Set the border color when enabled
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
                                              top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.05,
                                              bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              right: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                            ),
                                            child: Text(
                                              AppStrings.cancel,
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.textColorRed,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.04,
                                              right: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.04,
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.003,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.067,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              right: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                            ),
                                            child: Text(
                                              AppStrings.save,
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
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
                          AppImages.editIcon,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyConnections()));
                      },
                      child: Column(
                        children: [
                          Text(
                            '24',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            AppStrings.totalseed,
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: Colors.black12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>//Connect(),
                            Connections(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Text(
                            '14',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            AppStrings.connection,
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Expanded(
                  child: Container(
                    height: height*0.54,
                    child: GridView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Image.asset(images[index]);
                      },
                      itemCount: images.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns in the grid
                        mainAxisSpacing: 4.0, // Spacing between rows
                        crossAxisSpacing: 4.0, // Spacing between columns
                        childAspectRatio: 1.0, // Aspect ratio of each grid item
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
    //  };
    // }
    // );
  }

  showRemoveDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Container(
            height: 178,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                    left: MediaQuery.of(context).size.height * 0.020,
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
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.height * 0.03,
                    right: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.height * 0.03,
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
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                        right: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Text(
                        AppStrings.cancel,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColorRed,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.04,
                        right: MediaQuery.of(context).size.height * 0.04,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.003,
                        height: MediaQuery.of(context).size.height * 0.067,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                        right: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Text(
                        AppStrings.ok,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
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
  }
}
