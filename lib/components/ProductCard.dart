import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class ProductCard extends StatelessWidget {
  final ExactAssetImage picture;
  final ExactAssetImage picture1;
  final ExactAssetImage picture2;

  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Row(
      children: <Widget>[
        new Column(children: <Widget>[
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/productList");
              },
              child: new Column(
                children: <Widget>[
                  new Image(
                    image: picture,
                    height: screenSize.height / 8.0,
                    width: screenSize.width / 3.3,
                    // fit: BoxFit.cover,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, right: 10.0, top: 10.0),
                    child: new Text(
                      text,
                      style: new TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
        new Column(children: <Widget>[
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/productList");
              },
              child: new Column(
                children: <Widget>[
                  new Image(
                    image: picture1,
                    height: screenSize.height / 8.0,
                    width: screenSize.width / 3.3, // fit: BoxFit.cover,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, right: 10.0, top: 10.0),
                    child: new Text(
                      text1,
                      style: new TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
        new Column(children: <Widget>[
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/productList");
              },
              child: new Column(
                children: <Widget>[
                  new Image(
                    image: picture2,
                    height: screenSize.height / 8.0,
                    width: screenSize.width / 3.3, // fit: BoxFit.cover,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, right: 10.0, top: 10.0),
                    child: new Text(
                      text2,
                      style: new TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }

  ProductCard({
    this.picture,
    this.picture1,
    this.picture2,
    this.text,
    this.text1,
    this.text2,
  });
}
