import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  String buttonName;
  final VoidCallback onPressed;
  TextStyle textStyle, buttonTextStyle;
  TextAlign textAlign;
  Color textFieldColor;
  //passing props in react style
  TextButton({
    this.buttonName,
    this.onPressed,
    this.buttonTextStyle,
    this.textAlign,
    this.textFieldColor,
  });
  @override
  Widget build(BuildContext context) {
    return (new FlatButton(
      child: new Text(
        buttonName,
        textAlign: textAlign,
        style: buttonTextStyle,
      ),
      onPressed: onPressed,
      color: textFieldColor,
    ));
  }
}
