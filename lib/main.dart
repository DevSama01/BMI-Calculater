import 'package:flutter/material.dart';
import '../screens/inputs-page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0x9b0a0e21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff0A0E21)),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Color(0xff000310),
      ),
      home: iput_page(),
    ),
  );
}
