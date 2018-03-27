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
  final String text6;

  final String text7;

  final String text8;

  final String text9;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Row(
      children: <Widget>[
        new Column(children: <Widget>[
          new Card(
            child: new GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/productdetails');
              },
              child: new Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, top: 0.0, bottom: 10.0, right: 10.0),
                child: new Column(
                  children: <Widget>[
                    new Image(
                      image: picture,
                      height: screenSize.height / 3.5,
                      width: screenSize.width / 2.2,
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, bottom: 10.0, right: 0.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Column(
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0,
                                        left: 0.0,
                                        right: 20.0,
                                        bottom: 0.0),
                                    child: new Column(
                                      children: <Widget>[
                                        new Text(text,
                                            style: new TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0,
                                    left: 30.0,
                                    right: 0.0,
                                    bottom: 0.0),
                                child: new Icon(
                                  icon,
                                  color: Colors.grey,
                                  size: 25.0,
                                ),
                              )
                            ],
                          ),
                          new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 4.0, right: 0.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text(text1,
                                        style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    new Text(text2,
                                        style: new TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        )),
                                    new Text(text3,
                                        style: new TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                ),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 4.0, right: 0.0),
                                child: new Text(text4,
                                    style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        new Column(children: <Widget>[
          new Card(
            child: new GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/productdetails');
              },
              child: new Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, top: 0.0, bottom: 10.0, right: 3.0),
                child: new Column(
                  children: <Widget>[
                    new Image(
                      image: picture2,
                      height: screenSize.height / 3.5,
                      width: screenSize.width / 2.2,
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, bottom: 10.0, right: 0.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Column(
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0,
                                        left: 0.0,
                                        right: 20.0,
                                        bottom: 0.0),
                                    child: new Column(
                                      children: <Widget>[
                                        new Text(text5,
                                            style: new TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0,
                                    left: 30.0,
                                    right: 0.0,
                                    bottom: 0.0),
                                child: new Icon(
                                  icon,
                                  color: Colors.grey,
                                  size: 25.0,
                                ),
                              )
                            ],
                          ),
                          new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 4.0, right: 0.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text(text6,
                                        style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    new Text(text7,
                                        style: new TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        )),
                                    new Text(text8,
                                        style: new TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                ),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 4.0, right: 0.0),
                                child: new Text(text9,
                                    style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }

  ProductListCard({
    this.picture,
    this.picture2,
    this.icon,
    this.text,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
    this.text8,
    this.text9,
  });
}
