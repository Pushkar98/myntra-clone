import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class CustomCardAmount extends StatelessWidget {
  String text;
  String text1;
  IconData trailingText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Container(
        margin: const EdgeInsets.only(left: 0.0),
        decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border(
                bottom: new BorderSide(
              width: 0.5,
              color: Colors.black38,
            ))),
        child: new Container(
          child: new ListTile(
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: new Text(
                        text,
                        style: new TextStyle(
                            color: new Color.fromRGBO(0, 0, 0, 0.8),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      )),
                ],
              ),
              trailing: new Text(
                text1,
                style: new TextStyle(
                    color: new Color.fromRGBO(0, 0, 0, 0.8),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              )),
        ),
      ),
    );
  }

  CustomCardAmount({this.text, this.text1});
}
