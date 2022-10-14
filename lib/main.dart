import 'package:bre/Settings/Tapbar.dart';
import 'package:bre/screens/HomeScreen.dart';
import 'package:bre/screens/Profile.dart';
import 'package:bre/screens/SplachScreen.dart';
import 'package:bre/screens/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Widget/rent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplachScreen(),
      );
    });
  }
}
