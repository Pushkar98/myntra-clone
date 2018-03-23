import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class EstimatedDeliveryCard extends StatelessWidget {
  final AssetImage picture;

  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin:
          const EdgeInsets.only(top: 5.0, bottom: 0.0, right: 5.0, left: 0.0),
      padding:
          const EdgeInsets.only(top: 15.0, bottom: 0.0, left: 0.0, right: 2.0),
//      color: Colors.white,
      decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border(
              bottom: new BorderSide(
//              width: 0.3,
            color: Colors.black26,
          ))),
      child: new Container(
        margin: const EdgeInsets.only(left: 2.0, bottom: 5.0),
        child: new ListTile(
          title: new Row(
            children: <Widget>[
              new Image(
                image: picture,
                height: 60.0,
                width: 40.0,
                // color: new Color.fromRGBO(153, 153, 153, 1.0),
              ),
              new Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      text,
                      style: textStylePayment4,
                    ),
                    new Text(
                      text1,
                      style: textStylePayment4,
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 0.0),
                child: new Column(
                  children: <Widget>[
                    new Text(
                      text2,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  EstimatedDeliveryCard({this.picture, this.text, this.text1, this.text2});
}
