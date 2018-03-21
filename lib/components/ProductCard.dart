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
    return new Row(
      children: <Widget>[
        new Column(children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(left: 8.0, bottom: 0.0, right: 0.0),
            // height: 115.0,
            color: Colors.white,
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 0.0, bottom: 0.0, right: 0.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.0,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture,
                  height: 80.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 4.0, bottom: 10.0, right: 20.0),
                    child: new Text('30 - 50 % Off'))
              ],
            ),
          )
        ]),
        new Column(children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(left: 8.0, bottom: 0.0, right: 0.0),
            // height: 115.0,
            color: Colors.white,
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 0.0, bottom: 0.0, right: 0.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.0,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture,
                  height: 80.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 4.0, bottom: 10.0, right: 20.0),
                    child: new Text('30 - 50 % Off'))
              ],
            ),
          )
        ]),
        new Column(children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(left: 8.0, bottom: 0.0, right: 0.0),
            // height: 115.0,
            color: Colors.white,
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 0.0, bottom: 0.0, right: 0.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.0,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture,
                  height: 80.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 4.0, bottom: 10.0, right: 20.0),
                    child: new Text('30 - 50 % Off'))
              ],
            ),
          )
        ]),
      ],
    );
  }

  ProductCard(
      {this.picture,
      this.picture1,
      this.picture2,
      this.text,
      this.text1,
      this.text2});
}
