import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/ProductListCard.dart';

class ProductList extends StatefulWidget {
  ProductList({Key key}) : super(key: key);
  @override
  ProductListState createState() => new ProductListState();
}

class ProductListState extends State<ProductList>
    with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "PRODUCT LIST",
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
        padding:
            const EdgeInsets.only(left: 0.0, top: 5.0, bottom: 5.0, right: 0.0),
        children: <Widget>[
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys  ",
            text1: "Rs 699 ",
            text2: "Rs 12,99 ",
            text3: "Rs 500 Off ",
            text4: 'Super Slim Fit Formual Suit',
            text5: "Van Heusen  ",
            text6: "Rs 699 ",
            text7: "Rs 12,99 ",
            text8: "Rs 500 Off",
            text9: 'Super Slim Fit Formual Suit',
          ),
          new ProductListCard(
            picture: bag3,
            picture2: bag1,
            icon: Icons.bookmark_border,
            text: "Louis Phillipe  ",
            text1: "Rs 699 ",
            text2: "Rs 12,99 ",
            text3: "Rs 500 Off ",
            text4: 'Super Slim Fit Formual Suit',
            text5: "Van Heusen  ",
            text6: "Rs 699 ",
            text7: "Rs 12,99 ",
            text8: "Rs 500 Off",
            text9: 'Super Slim Fit Formual Suit',
          ),
          new ProductListCard(
            picture: bag2,
            picture2: bag3,
            icon: Icons.bookmark_border,
            text: "Park Aveneue",
            text1: "Rs 699 ",
            text2: "Rs 12,99 ",
            text3: "Rs 500 Off ",
            text4: 'Super Slim Fit Formual Suit',
            text5: "Van Heusen",
            text6: "Rs 699 ",
            text7: "Rs 12,99 ",
            text8: "Rs 500 Off",
            text9: 'Super Slim Fit Formual Suit',
          ),
          new ProductListCard(
            picture: bag2,
            picture2: bag1,
            icon: Icons.bookmark_border,
            text: "Blackberrys  ",
            text1: "Rs 699 ",
            text2: "Rs 12,99 ",
            text3: "Rs 500 Off ",
            text4: 'Super Slim Fit Formual Suit',
            text5: "Raymond ",
            text6: "Rs 699 ",
            text7: "Rs 12,99 ",
            text8: "Rs 500 Off",
            text9: 'Super Slim Fit Formual Suit',
          ),
          new ProductListCard(
            picture: bag3,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Louis Philippe ",
            text1: "Rs 699 ",
            text2: "Rs 12,99 ",
            text3: "Rs 500 Off ",
            text4: 'Super Slim Fit Formual Suit',
            text5: "Van Heusen",
            text6: "Rs 699 ",
            text7: "Rs 12,99 ",
            text8: "Rs 500 Off",
            text9: 'Super Slim Fit Formual Suit',
          ),
        ],
      ),
    );
  }
}
