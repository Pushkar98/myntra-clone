import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class PaymentCard extends StatelessWidget {
  String text;
  String text1;

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
              width: 0.5,
              color: Colors.black38,
            ))),
        child: new Container(
          child: new ListTile(
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: new Text(
                        text,
                        style: textStylePayment,
                      )),
                ],
              ),
              trailing: new Text(
                text1,
                style: textStylePayment1,
              )),
        ),
      ),
    );
  }

  PaymentCard({this.text, this.text1});
}
