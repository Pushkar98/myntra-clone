import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class ProductSizeCard extends StatelessWidget {
  IconData icon;
  String text;
  String text1;
  @override
  Widget build(BuildContext context) {
    return new Container(
//      color: Colors.white,
      decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border(
              bottom: new BorderSide(
//              width: 0.3,
            color: Colors.white,
          ))),
      child: new Container(
        margin: const EdgeInsets.only(left: 3.0),
        child: new ListTile(
          title: new Row(
            children: <Widget>[
              new Icon(
                icon,
                color: new Color.fromRGBO(153, 153, 153, 1.0),
              ),
              new Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: new Text(
                    text,
                    style: new TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal),
                  )),
            ],
          ),
          trailing: new Text(
            text1,
            style: new TextStyle(
                color: Colors.blue,
                fontSize: 12.0,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }

  ProductSizeCard({this.icon, this.text, this.text1});
}
