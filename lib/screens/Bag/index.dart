import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class Bag extends StatefulWidget {
  Bag({Key key}) : super(key: key);
  @override
  BagState createState() => new BagState();
}

class BagState extends State<Bag> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: whiteColor,
          centerTitle: true,
          title: new Text(
            "BAG",
            style: textStylew600,
          ),
        ),
        body: new ListView(
          padding: const EdgeInsets.only(
              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text('ITEMS (2)'),
                new Text(
                    '                                                         '),
                new Text('TOTAL:'),
                new Text('1,598'),
              ],
            )
          ],
        ));
  }
}
