import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login.page.dart';

//tela splash
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(
        seconds: 3), (){
      Navigator.push(
          context, MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 400,
        ),

      ),

    );

  }

}