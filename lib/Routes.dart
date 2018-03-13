import 'package:flutter/material.dart';
import 'package:ecommerce_pro/screens/Home/index.dart';
import 'package:ecommerce_pro/screens/Login/index.dart';
import 'package:ecommerce_pro/screens/SignUp/index.dart';
import 'package:ecommerce_pro/screens/HomeWithTab/index.dart';
import 'package:ecommerce_pro/screens/splashScreen/index.dart';
import 'package:ecommerce_pro/screens/HomePro/index.dart';
import 'package:ecommerce_pro/screens/Categories/index.dart';
import 'package:ecommerce_pro/screens/Bag/index.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => new HomeScreen(),
    "/login": (BuildContext context) => new Login(),
    "/splashScreen": (BuildContext context) => new splashScreen(),
    "/signup": (BuildContext context) => new SignUp(),
    "/HomewithTab": (BuildContext context) => new HomeWithTab(),
    "/homePro": (BuildContext context) => new HomePro(),
    "/categories": (BuildContext context) => new Categories(),
    "/bag": (BuildContext context) => new Bag(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Ecommerce App",
      //debugShowCheckedModeBanner: false,
      home: new Bag(),
      //theme: appTheme,
      routes: routes,
    ));
  }
}
