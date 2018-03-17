import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/Product/style.dart';

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
            "CATEGORIES",
            style: textStylew600,
          ),
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
              left: 3.0, top: 0.0, bottom: 0.0, right: 3.0),
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
            new Row(
              children: <Widget>[
                new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
                      child: new Image(
                        image: women1,
                        height: 80.0,
                        fit: BoxFit.cover,
                      )),
                  new Text(
                    "30-50 % Off",
                    style: textStylesubTitle,
                  ),
                ]),
                new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
                      child: new Image(
                        image: men,
                        height: 80.0,
                        fit: BoxFit.cover,
                      )),
                  new Text(
                    "On Point!",
                    style: textStylesubTitle,
                  ),
                ]),
                new Column(children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
                      child: new Image(
                        image: bag,
                        height: 80.0,
                        fit: BoxFit.cover,
                      )),
                  new Text(
                    "30-50 % Off",
                    style: textStylesubTitle,
                  ),
                ]),
              ],
            ),
          ],
        ));
  }
}
