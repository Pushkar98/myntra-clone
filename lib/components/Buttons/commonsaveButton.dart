import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SaveButton extends StatelessWidget {
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: new InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(text1);
        },
        child: new Container(
          child: new Text(
            defaultTargetPlatform == TargetPlatform.android ? text : text,
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          // width: screenSize.width - 30,
          height: screenSize.height / 16.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
          ),
        ),
      ),
    );
  }

  SaveButton({this.text, this.text1});
}
