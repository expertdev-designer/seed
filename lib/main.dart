import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/connection_list.dart';
import 'package:seedapp/connections.dart';
import 'package:seedapp/my_connections.dart';
import 'package:seedapp/schedule.dart';
import 'package:seedapp/seed_detail.dart';


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
    'assets/images/1.png',
    'assets/images/7.png',
    'assets/images/13.png',
    'assets/images/2.png',
    'assets/images/8.png',
    'assets/images/14.png',
    'assets/images/3.png',
    'assets/images/9.png',
    'assets/images/15.png',
    'assets/images/4.png',
    'assets/images/10.png',
    'assets/images/16.png',
  ];



  @override
  Widget build(BuildContext context) {
    var _media=MediaQuery.of(context);
    //MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          // appBar: AppBar(
          //
          //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //
          //   //title: Text(),
          // ),
          body: Stack(
            children: <Widget>[
              Image.asset('assets/images/top.png',
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
                            padding:  EdgeInsets.only(top:_media.size.height*0.05, left: _media.size.height*0.004,),
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
                            padding: EdgeInsets.only(top: _media.size.height*0.03, left:_media.size.width*0.58,),
                            child: Container(
                              //alignment: Alignment.center,
                              //height: 24.96,
                              //width: 24.55,
                              width: constraints.maxWidth * 0.1,
                              height: constraints.maxWidth * 0.1,

                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>
                                          ConnectionList(),),);
                                  },
                                  child: Image.asset(
                                    'assets/images/fill.png', width: 20,
                                    height: 20,)),
                              //child:SvgPicture.asset('assets/images/Fill22.svg'),),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: _media.size.height*0.03, left:_media.size.width*0.04),
                            child: InkWell(
                                onTap: () {
                                  AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Adjust the radius value as needed
                                    ),
                                  );
                                },
                                child: Image.asset(
                                    'assets/images/delete_icon.png')),
                          ),


                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: _media.size.height*0.04,),
                        child: Stack(
                          children: [
                            SizedBox(
                              //width: 90,
                              //height: 90,
                              width: constraints.maxWidth * 0.2,
                              height: constraints.maxWidth * 0.2,
                              child: Image.asset('assets/images/Bitmap.png'),
                            ),
                            Positioned(
                              //bottom: 0,
                              //right: 5,
                              bottom: constraints.maxWidth * 0.000,
                              right: constraints.maxWidth * 0.005,
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5.0),
                                        ),
                                        title: Align(
                                          //   alignment: Alignment.topCenter,
                                          child: Container(
                                            width: double.infinity,
                                            color: Color(0xfff01C401),

                                            child: Text(
                                              'Enter New Group Name',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        content: Container(
                                          width: double.infinity,
                                          height: 30,
                                          child: Center(
                                            child: Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'Group Name',
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          Column(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 2,
                                                color: Colors.grey,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('CANCEL'),
                                                  ),
                                                  Container(width: 2,
                                                    height: 50,
                                                    color: Colors.grey,),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('SAVE'),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/edit_icon.png', width: 28,
                                  height: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: _media.size.height*0.005, left: _media.size.width*0.30,),
                        child: Row(
                          children: [
                            Text(
                              'Mad Family',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: _media.size.height*0.005,),
                              child: Image.asset(
                                'assets/images/edit_icon.png', width: 20,
                                height: 20,),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:_media.size.height*0.04, top: _media.size.height*0.01,),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: _media.size.height * 0.32, left: _media.size.height * 0.05, right: _media.size.height*0.01,),
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
                              'Total Seeds', style: GoogleFonts.poppins(
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
                      padding: EdgeInsets.only(left: _media.size.height*0.020,),
                      child:  VerticalDivider(
                        thickness: 1,
                        width: 0.5,
                        indent: _media.size.height*0.33,
                        endIndent: _media.size.height*0.61,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: _media.size.height*0.32, left: _media.size.height*0.03, right: _media.size.height*0.01,),
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
                              child: Text('connections',
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
                EdgeInsets.only(top: _media.size.height*0.4,),
                child: GridView.builder(itemBuilder: (context,index){

                  return Image.asset(images[index]);
                },itemCount:images.length ,
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

      }
    );
  }
}
