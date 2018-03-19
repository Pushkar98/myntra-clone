import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class ProductListCard extends StatelessWidget {
  final ExactAssetImage picture;
  final ExactAssetImage picture2;
  final IconData icon;
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Column(children: <Widget>[
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 0.0, bottom: 10.0, right: 25.0),
              child: new Column(
                children: <Widget>[
                  new Image(
                    image: picture,
                    height: 260.0,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, bottom: 10.0, right: 0.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  text,
                                  style: textStylesubTitle,
                                ),
                              ],
                            ),
                            new Text('data'),
                            new Icon(
                              icon,
                            )
                          ],
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[new Text(text1)],
                            ),
                            new Text(text2),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        new Column(children: <Widget>[
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 0.0, bottom: 10.0, right: 25.0),
              child: new Column(
                children: <Widget>[
                  new Image(
                    image: picture2,
                    height: 260.0,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, bottom: 10.0, right: 0.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  text3,
                                  style: textStylesubTitle,
                                ),
                              ],
                            ),
                            new Icon(
                              icon,
                            )
                          ],
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[new Text(text4)],
                            ),
                            new Text(text5),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }

  ProductListCard(
      {this.picture,
      this.picture2,
      this.icon,
      this.text,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.text5});
}
