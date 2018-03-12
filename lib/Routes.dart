import 'package:flutter/material.dart';
import 'package:ecommerce_pro/screens/Home/index.dart';
import 'package:ecommerce_pro/screens/Login/index.dart';
import 'package:ecommerce_pro/screens/SignUp/index.dart';

import 'package:ecommerce_pro/screens/splashScreen/index.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => new HomeScreen(),
    "/login": (BuildContext context) => new Login(),
    "/splashScreen": (BuildContext context) => new splashScreen(),
    "/signup": (BuildContext context) => new SignUp(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Ecommerce App",
      //debugShowCheckedModeBanner: false,
      home: new SignUp(),
      //theme: appTheme,
      routes: routes,
    ));
  }
}
