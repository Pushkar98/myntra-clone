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
            margin: const EdgeInsets.only(left: 8.0, bottom: 5.0, right: 0.0),
            // height: 115.0,
            color: Colors.white,
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 20.0, bottom: 5.0, right: 0.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture,
                  height: 90.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Container(
                margin: const EdgeInsets.only(
                    left: 0.0, top: 5.0, right: 0.0, bottom: 10.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Text(text)),
          )
          /*  new Text(
                    "30-50 % Off",
                    style: textStylesubTitle,
                  ), */
        ]),
        new Column(children: <Widget>[
          new Container(
            //height: 115.0,
            color: Colors.white,
            child: new Container(
                margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture1,
                  height: 90.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Container(
                margin: const EdgeInsets.only(
                    left: 5.0, top: 5.0, right: 5.0, bottom: 10.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Text(text)),
          )
        ]),
        new Column(children: <Widget>[
          new Container(
            //height: 115.0,
            color: Colors.white,
            child: new Container(
                margin: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Image(
                  image: picture2,
                  height: 90.0,
                  // fit: BoxFit.cover,
                )),
          ),
          new Container(
            color: Colors.white,
            child: new Container(
                margin: const EdgeInsets.only(
                    left: 5.0, top: 5.0, right: 5.0, bottom: 10.0),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border(
                        bottom: new BorderSide(
                      width: 0.5,
                      color: Colors.black38,
                    ))),
                child: new Text(text)),
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
