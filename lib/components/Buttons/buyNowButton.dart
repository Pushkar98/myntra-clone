import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BuynowButton extends StatelessWidget {
  final String text;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Column(
      children: <Widget>[
        new InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("/productList");
          },
          child: new Container(
            child: new Text(
              defaultTargetPlatform == TargetPlatform.android ? text : text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // width: screenSize.width - 30,
            height: screenSize.height / 20.0,
            width: screenSize.width / 5.2,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
            alignment: FractionalOffset.center,
            decoration: new BoxDecoration(
              color: Colors.green[400],
              borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
            ),
          ),
        ),
      ],
    );
  }

  BuynowButton({this.text});
}
