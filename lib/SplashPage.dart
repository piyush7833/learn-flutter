import 'dart:async';

import 'package:first/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {  //it is first function which initiated whenever a screen appers
    super.initState();
    Timer(Duration(seconds: 3),(){  //timer function is used whenever we want to do a certain task after few seconds
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage(),));  //by using page replacement we remove the curr page with coming page
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("M.U.N.C.H.",style: TextStyle(fontSize: 45,color: Colors.yellow),),
                  Text("Mobile Utility for Nourishing Campus Hunger",style: TextStyle(fontSize: 18,color: Colors.yellow,fontStyle: FontStyle.italic,decoration: TextDecoration.underline),)
                ],
              ),
            ),
    );
  }
}