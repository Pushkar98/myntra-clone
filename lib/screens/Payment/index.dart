import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';

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
                style: textStyle12Bold,
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Text('OTHER PAYMENT OPTIONS'),
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
                      "Credit/Debit Card",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      "NET Banking",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      "Cash On Delivery",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      "Wallets",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      "EMI (Credit Card)",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      "Gift Card",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "SELECT",
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
              new Text('ORDER SUMMARY'),
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
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                  ),
                ),
                new Container(
                  height: 40.0,
                  color: Colors.white,
                  child: new ListTile(
                    title: new Text(
                      "ORDER TOTAL",
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "Rs. 1120",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
                    ),
                    trailing: new Container(
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            "FREE",
                            style: new TextStyle(fontWeight: FontWeight.bold),
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
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: new Color.fromRGBO(153, 153, 153, 1.0)),
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
              new Text('ORDER SUMMARY'),
            ],
          ),
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[new Text('Flat Abc,')],
                  ),
                  new Row(
                    children: <Widget>[new Text('Xyz Apartment,')],
                  ),
                  new Row(
                    children: <Widget>[new Text('123 Main Road,')],
                  ),
                  new Row(
                    children: <Widget>[new Text('XX Sector, ZZ Layout,')],
                  ),
                  new Row(
                    children: <Widget>[new Text('AAA City,')],
                  ),
                  new Row(
                    children: <Widget>[new Text('State,- 111111')],
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
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                      ),
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
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                      ),
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
