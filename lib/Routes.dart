import 'package:flutter/material.dart';
import 'package:ecommerce_pro/screens/Home/index.dart';
import 'package:ecommerce_pro/screens/Login/index.dart';
import 'package:ecommerce_pro/screens/SignUp/index.dart';
import 'package:ecommerce_pro/screens/HomeWithTab/index.dart';
import 'package:ecommerce_pro/screens/splashScreen/index.dart';
import 'package:ecommerce_pro/screens/HomePro/index.dart';
import 'package:ecommerce_pro/screens/Categories/index.dart';
import 'package:ecommerce_pro/screens/Bag/index.dart';
import 'package:ecommerce_pro/screens/Address/index.dart';
import 'package:ecommerce_pro/screens/Confirm/index.dart';
import 'package:ecommerce_pro/screens/Payment/index.dart';
import 'package:ecommerce_pro/screens/Notification/index.dart';
import 'package:ecommerce_pro/screens/Product/index.dart';
import 'package:ecommerce_pro/screens/ProductList/index.dart';
import 'package:ecommerce_pro/screens/ShopMen/index.dart';
import 'package:ecommerce_pro/screens/ProductDetail/index.dart';
import 'package:ecommerce_pro/screens/Profile/index.dart';
import 'package:ecommerce_pro/components/Buttons/BottomNavigation/test1.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => new HomeScreen(),
    "/login": (BuildContext context) => new Login(),
    "/splashScreen": (BuildContext context) => new SplashScreen(),
    "/signup": (BuildContext context) => new SignUp(),
    "/HomewithTab": (BuildContext context) => new HomeWithTab(),
    "/homePro": (BuildContext context) => new HomePro(),
    "/categories": (BuildContext context) => new Categories(),
    "/bag": (BuildContext context) => new Bag(),
    "/address": (BuildContext context) => new Address(),
    "/confirm": (BuildContext context) => new Confirm(),
    "/payment": (BuildContext context) => new Payment(),
    "/notification": (BuildContext context) => new Notifications(),
    "/product": (BuildContext context) => new Product(),
    "/productList": (BuildContext context) => new ProductList(),
    "/shopmen": (BuildContext context) => new ShopMen(),
    "/productdetails": (BuildContext context) => new ProductDetail(),
    "/profile": (BuildContext context) => new ProfileScreen(),
    "/shopmen1": (BuildContext context) => new HomeWithTab1(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Ecommerce App",
      debugShowCheckedModeBanner: false,
      home: new ProductDetail(),
      //theme: appTheme,
      routes: routes,
    ));
  }
}
