import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/Categories/style.dart';
import 'package:ecommerce_pro/components/CustomCardAccount.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);
  @override
  CategoriesState createState() => new CategoriesState();
}

class CategoriesState extends State<Categories> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  _onPressed() {
    print("Button tapped");
  }

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
              color: Theme.of(context).primaryColor,
              size: 25.0,
            ),
          ],
        ),
        body: new ListView(
          padding: const EdgeInsets.only(
              left: 0.0, top: 10.0, bottom: 10.0, right: 0.0),
          children: <Widget>[
            new Card(
              child: new Column(
                children: <Widget>[
                  new CustomCardAccount(
                    text: "Topwear",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                  new CustomCardAccount(
                    text: "Bottomwear",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                  new CustomCardAccount(
                    text: "Sports & Active Wear",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                  new CustomCardAccount(
                    text: "Indian & Festive Wear",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                  new CustomCardAccount(
                    text: "Plus Size",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                  new CustomCardAccount(
                    text: "FootWear",
                    trailingIcon: Icons.arrow_drop_down,
                  ),
                ],
              ),
              color: Colors.white,
            ),
            new Card(
                child: new Column(
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      'RECENTLY VIEWED',
                      style: textStyleheader,
                    ),
                    new Text('                                   '),
                    new Text(
                      'CLEAR ALL',
                      style: new TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: new Row(
                    children: <Widget>[
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 30.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: mantastic,
                              height: 120.0,
                              width: 200.0,
                              fit: BoxFit.cover,
                            )),
                        new Text(
                          "We Love Winters!",
                          style: textStylesubTitle,
                        ),
                        new Text(
                          "stay warm & Cozy",
                          style: textStylesubTitleLight,
                        ),
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: glasses,
                              height: 120.0,
                              width: 200.0,
                              fit: BoxFit.cover,
                            )),
                        new Text(
                          "The Grunge Collection!",
                          style: textStylesubTitle,
                        ),
                        new Text(
                          "Born For The Road",
                          style: textStylesubTitleLight,
                        ),
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: bag,
                              height: 120.0,
                              width: 200.0,
                              fit: BoxFit.cover,
                            )),
                        new Text(
                          "On Point!",
                          style: textStylesubTitle,
                        ),
                        new Text(
                          "Premium Bags",
                          style: textStylesubTitleLight,
                        ),
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: men,
                              height: 120.0,
                              width: 200.0,
                              fit: BoxFit.cover,
                            )),
                        new Text(
                          "Everyday Wear",
                          style: textStylesubTitle,
                        ),
                        new Text(
                          "Printed Tees",
                          style: textStylesubTitleLight,
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            )),
            new Container(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'Contact Us',
                    style: textStylebottom,
                  ),
                ],
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'FAQs',
                    style: textStylebottom,
                  ),
                ],
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'About Us',
                    style: textStylebottom,
                  ),
                ],
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'Terms of use ',
                    style: textStylebottom,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

