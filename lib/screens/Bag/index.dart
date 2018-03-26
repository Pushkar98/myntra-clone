import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/CustomCard.dart';
import 'package:ecommerce_pro/components/CustomCardAmount.dart';
import 'package:ecommerce_pro/components/BagCard.dart';
import 'package:flutter/foundation.dart';
import 'package:ecommerce_pro/components/Bagwishlist.dart';
import 'package:ecommerce_pro/components/Buttons/commonsaveButton.dart';

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
    Size screenSize = MediaQuery.of(context).size;

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
              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
          children: <Widget>[
            new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'ITEMS (2)',
                  style: textStylesubTitle,
                ),
                new Text(
                  'TOTAL: Rs 1,598',
                  style: textStylesubTitle,
                ),
              ],
            ),
            new Card(
              child: new Padding(
                padding: const EdgeInsets.only(
                    left: 2.0, top: 0.0, bottom: 10.0, right: 2.0),
                child: new Column(
                  children: <Widget>[
                    new BagCard(
                      picture: bag1,
                      text: 'FabAlley Women Gray Classic Fit Casul',
                      text1: 'Top',
                      text2: 'Sold by: Funfash',
                      text3: 'Only 1 unit in Stock',
                      text4: 'Rs 1299',
                      text5: 'Rs 799',
                    ),
                    new BagWishlist(
                      text: 'REMOVE',
                      text1: '|',
                      text2: 'MOVE TO WISHLIST',
                    ),
                  ],
                ),
              ),
            ),
            new Card(
              child: new Padding(
                padding: const EdgeInsets.only(
                    left: 2.0, top: 0.0, bottom: 10.0, right: 2.0),
                child: new Column(
                  children: <Widget>[
                    new BagCard(
                      picture: bag1,
                      text: 'FabAlley Women Gray Classic Fit Casul',
                      text1: 'Top',
                      text2: 'Sold by: Funfash',
                      text3: 'Only 1 unit in Stock',
                      text4: 'Rs 1299',
                      text5: 'Rs 799',
                    ),
                    new BagWishlist(
                      text: 'REMOVE',
                      text1: '|',
                      text2: 'MOVE TO WISHLIST',
                    ),
                  ],
                ),
              ),
            ),
            new Text(
              "OPTIONS",
              style: textStylesubTitle,
            ),
            new Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 10.0, bottom: 10.0, right: 0.0),
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
            new Text(
              "PRICE DETAILS",
              style: textStylesubTitle,
            ),
            new Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 10.0, bottom: 0.0, right: 0.0),
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
            new SaveButton(
              text: "PLACE ORDER",
              text1: "/address",
            ),
          ],
        ));
  }
}
