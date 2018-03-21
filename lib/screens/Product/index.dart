import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/ProductCard.dart';
import 'package:ecommerce_pro/components/BrandCard.dart';

class Product extends StatefulWidget {
  Product({Key key}) : super(key: key);
  @override
  ProductState createState() => new ProductState();
}

class ProductState extends State<Product> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: whiteColor,
          centerTitle: true,
          title: new Text(
            "PRODUCT",
            style: textStylew600,
          ),
          leading: new IconButton(
              icon: new Icon(
                Icons.chevron_left,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/HomewithTab");
              }),
          actions: <Widget>[
            new Icon(
              Icons.search,
              color: Colors.black,
              size: 25.0,
            ),
          ],
        ),
        body: new ListView(
          padding: const EdgeInsets.only(
              left: 0.0, top: 0.0, bottom: 0.0, right: 0.0),
          children: <Widget>[
            new Card(
              child: new Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                  child: new Image(
                    image: loginCover,
                  )),
            ),
            new Image(
              image: stockUp,
            ),
            new Container(
              margin:
                  const EdgeInsets.only(left: 5.0, bottom: 10.0, right: 5.0),
              child: new ProductCard(
                picture: women1,
                picture1: women1,
                picture2: women1,
                text: '30 - 50% Off',
                text1: "Up to 60% Off",
                text2: '30 - 50% Off',
              ),
            ),
            new ProductCard(
              picture: women1,
              picture1: women1,
              picture2: women1,
              text: '30 - 50% Off',
              text1: "Up to 60% Off",
              text2: '30 - 50% Off',
            ),
            new ProductCard(
              picture: women1,
              picture1: women1,
              picture2: women1,
              text: '30 - 50% Off',
              text1: "Up to 60% Off",
              text2: '30 - 50% Off',
            ),
            new Container(
              child: new Column(
                children: <Widget>[new Text("Shop More Brands")],
              ),
            ),
            new BrandCard(
              picture: brand1,
              picture1: brand2,
              picture2: brand1,
            ),
            new BrandCard(
              picture: brand2,
              picture1: brand1,
              picture2: brand2,
            ),
            new BrandCard(
              picture: brand1,
              picture1: brand2,
              picture2: brand1,
            ),
          ],
        ));
  }
}
