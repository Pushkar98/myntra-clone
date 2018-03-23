import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';
import 'package:ecommerce_pro/components/EstimatedDeliveryCard.dart';
import 'package:ecommerce_pro/components/EditAddresCard.dart';
import 'package:ecommerce_pro/components/Buttons/commonsaveButton.dart';

class Confirm extends StatefulWidget {
  Confirm({Key key}) : super(key: key);
  @override
  ConfirmState createState() => new ConfirmState();
}

class ConfirmState extends State<Confirm> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

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
              Navigator.of(context).maybePop("/address");
            }),
      ),
      body: new ListView(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text(
                'CONFIRM ADDRESS',
                style: textStylesubTitle,
              ),
            ],
          ),
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  new EditAddressCard(
                    text: "EDIT/CHANGE ADDRESS",
                    text1: "ADD NEW ADDRESS",
                  ),
                ],
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Text(
                'ESTIMATED DELIVERY TIME',
                style: textStylesubTitle,
              ),
            ],
          ),
          new Card(
              child: new EstimatedDeliveryCard(
            picture: const AssetImage("assets/6.png"),
            text: 'Estimated Delivery',
            text1: 'Date:',
            text2: '20 April 2018',
          )),
          new Card(
              child: new EstimatedDeliveryCard(
            picture: const AssetImage("assets/6.png"),
            text: 'Estimated Delivery',
            text1: 'Date:',
            text2: '20 April 2018',
          )),
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
          new SaveButton(
            text: "CONTINUE TO PAYMENT",
            text1: "/payment",
          ),
        ],
      ),
    );
  }
}
