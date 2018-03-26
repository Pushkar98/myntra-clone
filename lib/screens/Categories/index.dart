import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/Categories/style.dart';
import 'package:ecommerce_pro/components/CustomCardAccount.dart';
import 'package:ecommerce_pro/components/CustomCardAccountSub.dart';
import 'package:ecommerce_pro/components/RecentlyViewed.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);
  @override
  CategoriesState createState() => new CategoriesState();
}

class CategoriesState extends State<Categories> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  bool test = true;
  bool test1 = true;
  bool test2 = true;
  bool test3 = true;
  bool test4 = true;
  bool test5 = true;
  /*  _onPressed() {
    print("Button tapped");
  } */

  void changeState() {
    setState(() {
      test = !test;
    });
  }

  void changeState1() {
    setState(() {
      test1 = !test1;
    });
  }

  void changeState2() {
    setState(() {
      test2 = !test2;
    });
  }

  void changeState3() {
    setState(() {
      test3 = !test3;
    });
  }

  void changeState4() {
    setState(() {
      test4 = !test4;
    });
  }

  void changeState5() {
    setState(() {
      test5 = !test5;
    });
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
              color: Colors.black,
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
                  new Container(
                      //height: 80.0,
                      child: (test
                          ? (new CustomCardAccount(
                              text: 'Topwear',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Topwear',
                              text1: 'T-Shirts',
                              text2: 'Casual Shirts',
                              text3: 'Formal Shirts',
                              changstate: changeState,
                            )))),
                  new Container(
                      //height: 80.0,
                      child: (test1
                          ? (new CustomCardAccount(
                              text: 'Bottomwear',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState1,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Bottomwear',
                              text1: 'Jeans',
                              text2: 'Casual Trousers',
                              text3: 'Track Pants',
                              changstate: changeState1,
                            )))),
                  new Container(
                      //height: 80.0,
                      child: (test2
                          ? (new CustomCardAccount(
                              text: 'Sports & Active Wear',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState2,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Sports & Active Wear',
                              text1: 'Active T-shirts',
                              text2: 'Track Pants',
                              text3: 'Sport Pants',
                              changstate: changeState2,
                            )))),
                  new Container(
                      //height: 80.0,
                      child: (test3
                          ? (new CustomCardAccount(
                              text: 'Indian & Festive Wear',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState3,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Indian & Festive Wear',
                              text1: 'Active T-shirts',
                              text2: 'Track Pants',
                              text3: 'Sport Pants',
                              changstate: changeState3,
                            )))),
                  new Container(
                      //height: 80.0,
                      child: (test4
                          ? (new CustomCardAccount(
                              text: 'Plus Size',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState4,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Plus Size',
                              text1: 'Active T-shirts',
                              text2: 'Track Pants',
                              text3: 'Sport Pants',
                              changstate: changeState4,
                            )))),
                  new Container(
                      //height: 80.0,
                      child: (test5
                          ? (new CustomCardAccount(
                              text: 'Footwear',
                              trailingIcon: Icons.arrow_drop_down,
                              changstate: changeState5,
                            ))
                          : (new CustomCardAccountSub(
                              text: 'Footwear',
                              text1: 'Active T-shirts',
                              text2: 'Track Pants',
                              text3: 'Sport Pants',
                              changstate: changeState5,
                            )))),
                ],
              ),
              color: Colors.white,
            ),
            new Card(
                child: new Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
                    child: new Column(
                      children: [
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'RECENTLY VIEWED',
                              style: textStyleheader,
                            ),
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
                          child: new GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/productList');
                            },
                            child: new Row(
                              children: <Widget>[
                                new RecentlyViewed(
                                  picture: mantastic,
                                  text: "We Love Winters!",
                                  text1: "stay warm & Cozy",
                                ),
                                new RecentlyViewed(
                                  picture: glasses,
                                  text: "The Grunge Collection!",
                                  text1: "Born For The Road",
                                ),
                                new RecentlyViewed(
                                  picture: bag,
                                  text: "On Point!",
                                  text1: "Premium Bags",
                                ),
                                new RecentlyViewed(
                                  picture: men,
                                  text: "Everyday Wear",
                                  text1: "Printed Tees",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))),
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
