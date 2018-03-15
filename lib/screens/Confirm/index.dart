import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';

class Confirm extends StatefulWidget {
  Confirm({Key key}) : super(key: key);
  @override
  ConfirmState createState() => new ConfirmState();
}

class ConfirmState extends State<Confirm> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "CONFIRM",
          style: textStylew600,
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/bag");
            }),
      ),
      body: new ListView(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text('CONFIRM ADDRESS'),
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
          new Row(
            children: <Widget>[
              new Text('ESTIMATED DELIVERY TIME'),
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
                        width: 40.0,
                        // color: new Color.fromRGBO(153, 153, 153, 1.0),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text('Estimated Delivery')
                              ],
                            ),
                            new Row(
                              children: <Widget>[new Text('Date:')],
                            )
                          ],
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 0.0),
                        child: new Column(
                          children: <Widget>[new Text('20 April 2018')],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Card(
            child: new Container(
              margin: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, right: 5.0, left: 0.0),
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 10.0, left: 0.0, right: 2.0),
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
                        width: 40.0,
                        // color: new Color.fromRGBO(153, 153, 153, 1.0),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text('Estimated Delivery')
                              ],
                            ),
                            new Row(
                              children: <Widget>[new Text('Date:')],
                            )
                          ],
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 0.0),
                        child: new Column(
                          children: <Widget>[new Text('20 April 2018')],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
          new Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/payment");
              },
              child: new Container(
                child: new Text(
                  defaultTargetPlatform == TargetPlatform.android
                      ? "CONTINUE TO PAYMENT"
                      : "CONTINUE TO PAYMENT",
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                // width: screenSize.width - 30,
                height: 45.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(0.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
