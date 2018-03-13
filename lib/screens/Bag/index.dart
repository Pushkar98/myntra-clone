import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/CustomCard.dart';
import 'package:ecommerce_pro/components/CustomCardAccount.dart';

class Bag extends StatefulWidget {
  Bag({Key key}) : super(key: key);
  @override
  BagState createState() => new BagState();
}

class BagState extends State<Bag> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String $;
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
              left: 10.0, top: 10.0, bottom: 0.0, right: 10.0),
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text('ITEMS (2)'),
                new Text(
                    '                                                         '),
                new Text('TOTAL:'),
                new Text('1,598'),
              ],
            ),
            new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
                    width: 0.5,
                    color: Colors.black38,
                  ))),
              child: new Row(
                children: <Widget>[
                  new Image(
                    image: bag1,
                    height: 130.0,
                    width: 100.0,
                  ),
                  new Column(
                    children: <Widget>[
                      new Text('FabAlley Women Gray Classic Fit Casual'),
                      new Text(
                          'Top                                                             '),
                      new Text(
                          "Sold by: Funfash                                        "),
                      new Text(
                          'Only 1 units in stock                                  '),
                      new Text(
                          "1,299                                                        "),
                      new Text(
                          '799                                                          '),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
                    width: 0.5,
                    color: Colors.black38,
                  ))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 30.0, bottom: 30.0, right: 10.0),
                    child: new Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text('Remove        '),
                        new Text('|'),
                        new Text('     MOVE TO WISHLIST'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
                    width: 0.5,
                    color: Colors.black38,
                  ))),
              child: new Row(
                children: <Widget>[
                  new Image(
                    image: bag2,
                    height: 130.0,
                    width: 100.0,
                  ),
                  new Column(
                    children: <Widget>[
                      new Text('FabAlley Women Black Classic Fit Casual'),
                      new Text(
                          'Top                                                             '),
                      new Text(
                          "Sold by: Funfash                                        "),
                      new Text(
                          'Only 2 units in stock                                  '),
                      new Text(
                          "1,299                                                        "),
                      new Text(
                          '799                                                          '),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
                    width: 0.5,
                    color: Colors.black38,
                  ))),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 30.0, bottom: 30.0, right: 10.0),
                    child: new Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text('Remove        '),
                        new Text('|'),
                        new Text('     MOVE TO WISHLIST'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Text("OPTIONS"),
            new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new CustomCard(
                      icon: Icons.settings,
                      text: "Apply Coupon",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    new CustomCard(
                      icon: Icons.lock_outline,
                      text: "Apply Coupon",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
            ),
            new Text("PRICE DETAILS"),
            new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new CustomCard(
                      text: "Apply Coupon",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    new CustomCard(
                      text: "Apply Coupon",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
