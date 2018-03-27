import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class CustomCardAmount extends StatelessWidget {
  final String text;
  final String text1;
  final Color color;
  final FontWeight fontWeight;

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
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      )),
                ],
              ),
              trailing: new Text(
                text1,
                style: new TextStyle(
                  fontSize: 14.0,
                  fontWeight: fontWeight,
                  color: color,
                ),
              )),
        ),
      ),
    );
  }

  CustomCardAmount({this.text, this.text1, this.color, this.fontWeight});
}
