import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/ShopMencard.dart';

class ShopMen extends StatefulWidget {
  ShopMen({Key key}) : super(key: key);
  @override
  ShopMenState createState() => new ShopMenState();
}

class ShopMenState extends State<ShopMen> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "SHOP MEN'S",
          style: textStylew600,
        ),
        actions: <Widget>[
          new Icon(
            Icons.search,
            color: Colors.black,
            size: 25.0,
          ),
        ],
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/HomewithTab");
            }),
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: new Image(
              image: menclothing,
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('Winter Style Sorted',
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                new Text(
                  'Hand-Picked Authenticity',
                  style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          new ShopMenCard(
            text: 'Topwear',
            trailingIcon: Icons.arrow_drop_down,
          ),
          new ShopMenCard(
            text: 'Bottomwear',
            trailingIcon: Icons.arrow_drop_down,
          ),
          new ShopMenCard(
            text: 'Sports & Active Wear',
            trailingIcon: Icons.arrow_drop_down,
          ),
          new ShopMenCard(
            text: 'Indian & Festive Wear',
            trailingIcon: Icons.arrow_drop_down,
          ),
          new ShopMenCard(
            text: 'Plus Size',
            trailingIcon: Icons.arrow_drop_down,
          ),
          new ShopMenCard(
            text: 'Footwear',
            trailingIcon: Icons.arrow_drop_down,
          ),
        ],
      ),
    );
  }
}
