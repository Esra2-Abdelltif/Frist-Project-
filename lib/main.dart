import 'package:flutter/material.dart';
import 'package:flutter1_app/LoginScreen/LoginScreen.dart';
import 'package:flutter1_app/LoginScreen/LoginScreen1.dart';

import 'WelcomeScreen/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
       primaryColor: Colors.pink,
     ),

     home:WelcomeScreen(),

    );
  }
}

