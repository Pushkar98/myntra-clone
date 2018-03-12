import 'package:flutter/material.dart';
import 'style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.only(
            left: 70.0, right: 70.0, top: 0.0, bottom: 0.0),
        decoration: new BoxDecoration(image: backgroundImage),
        child: new Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Flexible(
                //flex: 1,
                child: new Image(
              image: logo,
              width: screenSize.width / 1.6,
              //height: 1816 * screenSize.height / (506 * 15),
              height: screenSize.height / 2.5,
            )),
            new Text(
              "Loved Our Collection? Login with",
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400),
            ),
            new Center(
                child: new Image(
              image: facebook,
              width: screenSize.width / 1.6,
              height: 1200 * screenSize.height / (506 * 15),
            )),
            new Text(
              "* or use email address *",
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 30.0, top: 30.0),
              child: new Column(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "LOGIN",
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                          new Text(
                            "|",
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200),
                          ),
                          new Text(
                            "SIGNUP",
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
