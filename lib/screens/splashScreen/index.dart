import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  @override
  SplashScreenstate createState() => new SplashScreenstate();
}

class SplashScreenstate extends State<SplashScreen> {
  var twenty;
  Timer t2;
  String routeName;
  @override
  void initState() {
    super.initState();
    twenty = const Duration(seconds: 1);
    t2 = new Timer(twenty, () {
      print(1);
      routeName = "/HomewithTab";
      navigate(context, routeName);
    });
  }

  @override
  void dispose() {
    super.dispose();
    t2.cancel();
  }

  navigate(BuildContext context, routename) {
    if (routeName != null) {
      Navigator.of(context).pushNamed(routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new ExactAssetImage('assets/launchscreen.png'),
          fit: BoxFit.cover,
        )),
        child: new Align(
            alignment: Alignment.bottomCenter,
            child: new Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: new CircularProgressIndicator(
                strokeWidth: 3.0,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.black38),
              ),
            )),
      ),
    );
  }
}
