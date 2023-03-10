import 'package:flutter/material.dart';
String uri = 'http://192.168.53.8:3000';
class GlobalVariables {
//  COLORS
  static const appBarGradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 23, 201, 192),
        Color.fromARGB(255, 125, 221, 216),
      ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundColor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan.shade800;
  static const unselectedNavBarColor = Colors.black87;


}