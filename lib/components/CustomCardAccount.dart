import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class CustomCardAccount extends StatelessWidget {
  String text;
  IconData trailingIcon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Container(
        margin: const EdgeInsets.only(left: 10.0),
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
                    padding: const EdgeInsets.only(left: 10.0),
                    child: new Text(
                      text,
                      style: new TextStyle(
                          color: new Color.fromRGBO(0, 0, 0, 8.0),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900),
                    )),
              ],
            ),
            trailing: new Icon(
              trailingIcon,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  CustomCardAccount({this.text, this.trailingIcon});
}
