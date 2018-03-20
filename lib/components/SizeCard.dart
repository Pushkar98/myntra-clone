import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class SizeCard extends StatelessWidget {
  String text;
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 30.0,
        height: 30.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: new Border.all(
            color: Colors.grey[400],
            width: 1.0,
          ),
        ),
        child: new Container(
          child: new Text(text, style: new TextStyle(fontSize: 14.0)),
          margin: const EdgeInsets.only(
              left: 10.0, right: 10.0, bottom: 25.0, top: 5.0),
          width: 150.0,
          height: 150.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: whiteColor,
          ),
        ));
  }

  SizeCard({this.text});
}
