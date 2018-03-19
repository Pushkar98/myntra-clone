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
            const EdgeInsets.only(left: 0.0, top: 5.0, bottom: 0.0, right: 0.0),
        children: <Widget>[
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys      ",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim Fit Formal Suit ",
          ),
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim ",
          ),
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim ",
          ),
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim ",
          ),
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim ",
          ),
          new ProductListCard(
            picture: bag1,
            picture2: bag2,
            icon: Icons.bookmark_border,
            text: "Blackberrys",
            text1: "rs 699",
            text2: "Super Slim Fit Formal Suit",
            text3: "Van Heusen",
            text4: 'text4',
            text5: "Super Slim ",
          ),
        ],
      ),
    );
  }
}
