import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class BrandCard extends StatelessWidget {
  final ExactAssetImage picture;
  final ExactAssetImage picture1;
  final ExactAssetImage picture2;

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
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }

  BrandCard({
    this.picture,
    this.picture1,
    this.picture2,
  });
}
