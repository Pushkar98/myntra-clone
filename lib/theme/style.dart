import 'package:flutter/material.dart';

TextStyle textStyle = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.normal);
//
TextStyle textStyleBold = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.bold);
TextStyle textStylew500 = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.w500);
TextStyle textStyle12Bold = const TextStyle(
    color: const Color.fromRGBO(85, 26, 139, 1.0), fontSize: 12.0);
TextStyle textStyle10Bold = const TextStyle(
    color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.bold);
TextStyle textStyle10normal = const TextStyle(
    color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.normal);
TextStyle textStylew600 = const TextStyle(
    color: const Color.fromRGBO(169, 169, 169, 4.0),
    fontWeight: FontWeight.w500);
const Color textFieldColor = const Color.fromRGBO(105, 105, 105, 1.0);
const Color whiteColor = const Color(0XFFFFFFFF);
TextStyle textStyleSmall = const TextStyle(
    color: const Color.fromRGBO(59, 89, 152, 0.8),
    fontSize: 14.0,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold);
//const Color secondaryColor = const Color.fromRGBO(102, 51, 153, 0.8);

ThemeData appTheme = new ThemeData(
  primaryColor: new Color.fromRGBO(102, 51, 153, 0.8),
  primaryTextTheme: new TextTheme(
    display1: new TextStyle(
      color: new Color.fromRGBO(68, 68, 68, 1.0),
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    display2: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 11.0,
      fontWeight: FontWeight.w100,
    ),
    display3: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
    ),
    display4: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
    ),
  ),
  iconTheme: new IconThemeData(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
  ),
  primaryColorBrightness: Brightness.light,
  secondaryHeaderColor: new Color.fromRGBO(255, 255, 255, 10.0),
  //backgroundColor: Colors.grey[200],
//    backgroundColor: transparentColor,
//  indicatorColor: Colors.white,
//  accentColorBrightness: Brightness.light,
//    accentColor: whiteColor
);