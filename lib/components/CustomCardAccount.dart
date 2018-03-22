import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class CustomCardAccount extends StatelessWidget {
  String text;
  IconData trailingIcon;
  final VoidCallback changstate;

  @override
  Widget build(BuildContext context) {
    return new Column(
      //color: Colors.white,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(
              left: 10.0, right: 10.0, bottom: 0.0, top: 0.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: new Container(
            child: new ListTile(
              onTap: changstate,
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
      ],
    );
  }

  CustomCardAccount({this.text, this.trailingIcon, this.changstate});
}
