import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';
import 'package:ecommerce_pro/components/PaymentCard.dart';

class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);
  @override
  PaymentState createState() => new PaymentState();
}

class PaymentState extends State<Payment> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "PAYMENT",
          style: textStylew600,
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/confirm");
            }),
      ),
      body: new ListView(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Text(
                "You Pay Rs 1,598",
                style: new TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Text(
                'OTHER PAYMENT OPTIONS',
                style: textStylesubTitle,
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, bottom: 0.0, right: 10.0),
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new PaymentCard(
                    text: "Credit/Debit Card",
                    text1: "SELECT",
                  ),
                  new PaymentCard(
                    text: "NET Banking",
                    text1: "SELECT",
                  ),
                  new PaymentCard(
                    text: "Cash On Delivery",
                    text1: "SELECT",
                  ),
                  new PaymentCard(
                    text: "Wallets",
                    text1: "SELECT",
                  ),
                  new PaymentCard(
                    text: "EMI (Credit Card)",
                    text1: "SELECT",
                  ),
                ],
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Text(
                'ORDER SUMMARY',
                style: textStylesubTitle,
              ),
            ],
          ),
          new Card(
            child: new Column(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text(
                      "2 ITEMS",
                      style: textStylePayment4,
                    ),
                  ),
                ),
                new Container(
                  height: 40.0,
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text(
                      "ORDER TOTAL",
                      style: textStylePayment4,
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "Rs. 1120",
                            style: new TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Container(
                  height: 40.0,
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text(
                      "Delivery",
                      style: textStylePayment4,
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "FREE",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Container(
                  height: 40.0,
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text(
                      "Total Payable",
                      style: textStylePayment4,
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "Rs 1598",
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Text(
                'ORDER SUMMARY',
                style: textStylesubTitle,
              ),
            ],
          ),
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Text(
                        'Flat Abc,',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        'Xyz Apartment,',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        '123 Main Road,',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        'XX Sector, ZZ Layout,',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        'AAA City,',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        'State,- 111111',
                        style: textStylePayment3,
                      )
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                        child: new Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new InkWell(
                                  onTap: () {
                                    Navigator
                                        .of(context)
                                        .pushNamed("/PhoneNumber");
                                  },
                                  child: new Container(
                                    child: new Text(
                                      defaultTargetPlatform ==
                                              TargetPlatform.android
                                          ? "EDIT/CHANGE ADDRESS"
                                          : "EDIT/CHANGE ADDRESS",
                                      style: textStylePayment2,
                                    ),
                                    // width: screenSize.width - 30,
                                    height: 45.0,
                                    width: 150.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                                    alignment: FractionalOffset.center,
                                    decoration: new BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(0.2)),
                                    ),
                                  ),
                                ),
                                new Text('       '),
                                new InkWell(
                                  onTap: () {
                                    Navigator
                                        .of(context)
                                        .pushNamed("/PhoneNumber");
                                  },
                                  child: new Container(
                                    child: new Text(
                                      defaultTargetPlatform ==
                                              TargetPlatform.android
                                          ? "ADD NEW ADDRESS"
                                          : "ADD NEW ADDRESS",
                                      style: textStylePayment2,
                                    ),
                                    // width: screenSize.width - 30,
                                    height: 45.0,
                                    width: 150.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                                    alignment: FractionalOffset.center,
                                    decoration: new BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(0.2)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
