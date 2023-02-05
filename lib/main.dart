import 'package:flutter/material.dart';
import 'package:jiffi/Constants/constants.dart';
import 'package:jiffi/Screens/HomeScreen/HomeScreen.dart';
import 'package:jiffi/Theme/ThemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: 'Jiffi',
      home: HomeScreen(),
    );
  }
}
