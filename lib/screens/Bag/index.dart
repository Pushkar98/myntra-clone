import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/CustomCard.dart';
import 'package:ecommerce_pro/components/CustomCardAmount.dart';
import 'package:flutter/foundation.dart';

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
            " MY BAG",
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
                    '                                                    '),
                new Text('TOTAL:'),
                new Text('Rs 1,598'),
              ],
            ),
            new Card(
              child: new Container(
                margin: const EdgeInsets.only(
                    top: 5.0, bottom: 0.0, right: 5.0, left: 0.0),
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 0.0, left: 0.0, right: 2.0),
//      color: Colors.white,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
//              width: 0.3,
                      color: Colors.black26,
                    ))),
                child: new Container(
                  margin: const EdgeInsets.only(left: 2.0),
                  child: new ListTile(
                    title: new Row(
                      children: <Widget>[
                        new Image(
                          image: const AssetImage("assets/6.png"),
                          height: 50.0,
                          width: 30.0,
                          // color: new Color.fromRGBO(153, 153, 153, 1.0),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, top: 0.0, bottom: 0.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text('FabAlley Women Gray Classic Fi'),
                              new Text('Top'),
                              new Text('Sold by: Funfash'),
                              new Text('Only 1 units in stock'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                  left: 10.0, top: 10.0, bottom: 0.0, right: 10.0),
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    new CustomCardAmount(
                      text: "Bag Total",
                      text1: "Rs 2,598",
                    ),
                    new CustomCardAmount(
                      text: "Bag Discount",
                      text1: "-Rs 1,000 ",
                    ),
                    new CustomCardAmount(
                      text: "Sub Total",
                      text1: "Rs 1,598",
                    ),
                    new CustomCardAmount(
                      text: "Coupon Discount",
                      text1: "0",
                    ),
                    new CustomCardAmount(
                      text: "Total Payable",
                      text1: "Rs 1,598",
                    ),
                  ],
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: new InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/address");
                },
                child: new Container(
                  child: new Text(
                    defaultTargetPlatform == TargetPlatform.android
                        ? "PLACE ORDER"
                        : "PLACE ORDER",
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  // width: screenSize.width - 30,
                  height: 35.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                  alignment: FractionalOffset.center,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(0.0)),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
