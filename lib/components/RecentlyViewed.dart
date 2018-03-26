import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class RecentlyViewed extends StatelessWidget {
  final ExactAssetImage picture;
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Padding(
          padding: const EdgeInsets.only(
              left: 30.0, top: 10.0, bottom: 10.0, right: 10.0),
          child: new Image(
            image: picture,
            height: 120.0,
            width: 200.0,
            fit: BoxFit.cover,
          )),
      new Text(
        text,
        style: textStylesubTitle,
      ),
      new Text(
        text1,
        style: textStylesubTitleLight,
      ),
    ]);
  }

  RecentlyViewed({this.picture, this.text, this.text1});
}
