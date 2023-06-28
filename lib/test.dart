import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestCode extends StatelessWidget{
  const TestCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
      Container(
        width: 300,
      child: Image.asset('images/top.png',fit: BoxFit.cover,),
    ),
    ]
      ),
    );
  }

}