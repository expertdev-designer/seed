import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/connection_list.dart';
import 'package:seedapp/connections.dart';
import 'package:seedapp/schedule.dart';


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




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //
      //   //title: Text(),
      // ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/top.png',),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, ),
              child: Column(

                children:<Widget> [

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22,left: 5),
                        child: SizedBox(
                          height:25,
                          width: 25,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>Schedule(),
                              ),
                              );
                            },
                              child:Icon(Icons.arrow_back,size: 23,color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22,left: 256),
                        child: Container(
                          //alignment: Alignment.center,
                            height:24.96 ,
                            width: 24.55 ,
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionList(),),);
                                },
                                child:Image.asset('assets/images/fill.png',width: 20,height: 20,)),
                                //child:SvgPicture.asset('assets/images/Fill22.svg'),),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.asset('assets/images/Bitmap.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                        'Mad Family',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 20),
            child: Row(
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 245,left: 50,right: 10),
                  child: Column(
                    children: [
                      Text('24',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text('Total Seeds',style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: VerticalDivider(
                    thickness: 1,
                    width: 0.5,
                    indent: 250,
                    endIndent:450 ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:245,left: 25,right: 10),
                  child: Column(
                    children: [
                      Text('14',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                      // Text('Connections',style: GoogleFonts.poppins(
                      //     fontSize: 15,
                      //     fontWeight: FontWeight.w300,
                      //   decoration: TextDecoration.underline
                      // ),),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>Connections(),
                          ),
                          );
                        },
                          child: Text('connections',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w300,decoration: TextDecoration.underline),))
                    ],
                  ),
                ),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top:331 ),
             child: SingleChildScrollView(child: Image.asset('assets/images/Photo-library.png',width: double.infinity, fit: BoxFit.cover,)),
           ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
