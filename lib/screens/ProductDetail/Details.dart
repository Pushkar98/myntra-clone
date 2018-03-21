import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class Detail extends StatelessWidget {
  final String text;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text(
          text,
          // 'Stay warm and trendy this winter with this trendy sweater from nouk.Layer it on a tee, or just team it with a pair of jeans and boots when you head out this winter',
          style: textDescription,
        ),
      ],
    );
  }

  Detail({this.text});
}
