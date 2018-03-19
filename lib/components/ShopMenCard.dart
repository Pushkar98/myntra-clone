import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class ShopMenCard extends StatelessWidget {
  String text;
  IconData trailingIcon;
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
              width: 0.8,
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
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
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

  ShopMenCard({this.text, this.trailingIcon});
}
