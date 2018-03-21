import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  final ExactAssetImage picture;

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Padding(
          padding: const EdgeInsets.only(
              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
          child: new Image(
            image: picture,
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          )),
    ]);
  }

  Ecommerce({this.picture});
}
