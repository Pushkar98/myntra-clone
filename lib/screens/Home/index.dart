import 'package:flutter/material.dart';
import 'package:ecommerce_pro/components/Buttons/textButton.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    onPressed(String routeName) {
      Navigator.of(context).pushNamed(routeName);
    }

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
            new Flex(
              //flex: 1,
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new TextButton(
                  buttonName: "LOGIN",
                  onPressed: () => onPressed("/login"),
                  buttonTextStyle: textStyleSmall,
                  textAlign: TextAlign.center,
                ),
                new Text('|'),
                new TextButton(
                  buttonName: "SIGNUP",
                  onPressed: () => onPressed("/signup"),
                  buttonTextStyle: textStyleSmall,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
