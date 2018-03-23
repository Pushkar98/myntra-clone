import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/HomePro/style.dart';
import 'package:ecommerce_pro/components/CircleImage.dart';
import 'package:ecommerce_pro/components/trending.dart';
import 'package:ecommerce_pro/components/Justin.dart';
import 'package:ecommerce_pro/components/Ecommerce.dart';
import 'package:ecommerce_pro/components/Buttons/buyNowButton.dart';
import 'package:ecommerce_pro/components/Buttons/BottomNavigation/test1.dart';
import 'package:flutter/foundation.dart';

class HomePro extends StatefulWidget {
  HomePro({Key key}) : super(key: key);
  @override
  HomeProState createState() => new HomeProState();
}

class HomeProState extends State<HomePro> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
        appBar: new AppBar(
          //backgroundColor: Theme.of(context).secondaryHeaderColor,
          backgroundColor: whiteColor,
          centerTitle: true,
          title: new Text(
            "E-COMMERCE PRO",
            style: textStylew600,
          ),
          actions: <Widget>[
            new Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
        body: new ListView(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
            children: <Widget>[
              new Card(
                  child: new SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/shopmen1');
                  },
                  child: new Row(

                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new CircleImage(
                          picture: const AssetImage("assets/circle1.png"),
                          text: 'MEN',
                        ),
                        new CircleImage(
                          picture: const AssetImage("assets/circle2.png"),
                          text: 'WOMEN',
                        ),
                        new CircleImage(
                          picture: const AssetImage("assets/circle3.png"),
                          text: 'KIDS',
                        ),
                        new CircleImage(
                          picture: const AssetImage("assets/circle4.png"),
                          text: 'HOME',
                        ),
                        new CircleImage(
                          picture: const AssetImage("assets/circle5.png"),
                          text: 'EOS',
                        ),
                      ]),
                ),
              )),
              new Card(
                child: new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
                    child: new GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/product');
                        },
                        child: new Image(
                          image: bannersale,
                        ))),
              ),
              new Card(
                  child: new Column(
                children: [
                  new Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 5.0, left: 0.0),
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 2.0),
                    height: 40.0,
                    color: Colors.white,
                    child: new ListTile(
                      title: new Text(
                        "Trending Now",
                        style: textStyleheader,
                      ),
                    ),
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/productList');
                      },
                      child: new Row(
                        children: <Widget>[
                          new Column(children: <Widget>[
                            new Trending(
                              picture: women1,
                            ),
                            new Text(
                              "The Grunge Collection!",
                              style: textStylesubTitle,
                            ),
                            new Text(
                              "Born For the Road",
                              style: textStylesubTitleLight,
                            ),
                          ]),
                          new Column(children: <Widget>[
                            new Trending(
                              picture: men,
                            ),
                            new Text(
                              "On Point!",
                              style: textStylesubTitle,
                            ),
                            new Text(
                              "Premium Bags That Steal The Spotlight",
                              style: textStylesubTitleLight,
                            ),
                          ]),
                          new Column(children: <Widget>[
                            new Trending(
                              picture: bag,
                            ),
                            new Text(
                              "A Fresh Edge To Everyday Wear ",
                              style: textStylesubTitle,
                            ),
                            new Text(
                              "Printed Tees",
                              style: textStylesubTitleLight,
                            ),
                          ]),
                          new Column(children: <Widget>[
                            new Trending(
                              picture: women1,
                            ),
                            new Text(
                              "Up to 50% Off",
                              style: textStylesubTitle,
                            ),
                            new Text(
                              "Explore The Sporty Side",
                              style: textStylesubTitleLight,
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 5.0, left: 0.0),
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 2.0),
                    height: 35.0,
                    color: Colors.white,
                    child: new ListTile(
                      title: new Text(
                        "Today's Pick ",
                        style: textStyleheader,
                      ),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 0.0, bottom: 10.0, right: 8.0),
                            child: new Image(
                              image: glasses,
                              height: screenSize.height / 2.5,
                              width: screenSize.width / 1.2,
                              fit: BoxFit.cover,
                            )),
                      ]),
                    ],
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 5.0, left: 0.0),
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 2.0),
                    height: 35.0,
                    color: Colors.white,
                    child: new ListTile(
                      title: new Text(
                        "Just In ",
                        style: textStyleheader,
                      ),
                    ),
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/productList');
                      },
                      child: new Row(
                        children: <Widget>[
                          new JustIn(
                            picture: girl,
                            text: 'We Love Winters!',
                            text1: 'Stay Warm & Cozy',
                          ),
                          new JustIn(
                            picture: glasses,
                            text: 'The Grunge Collection!',
                            text1: 'Born For The Road',
                          ),
                          new JustIn(
                            picture: bag,
                            text: 'On Point!',
                            text1: 'Premium Bags',
                          ),
                          new JustIn(
                            picture: men,
                            text: 'Everyday Wear',
                            text1: 'Printed Tees',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 0.0, left: 0.0),
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                    height: screenSize.height / 18.5,
                    color: Colors.white,
                    child: new ListTile(
                        title: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "Since you've shown interest in ",
                          style: textStyleheader,
                        ),
                        new Text('Tshirts',
                            style: new TextStyle(
                              color: const Color.fromRGBO(0, 0, 255, 1.0),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    )),
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/productList');
                      },
                      child: new Row(
                        children: <Widget>[
                          new Ecommerce(
                            picture: women1,
                          ),
                          new Ecommerce(
                            picture: girl,
                          ),
                          new Ecommerce(
                            picture: women1,
                          ),
                          new Ecommerce(
                            picture: men,
                          ),
                          new Ecommerce(
                            picture: women1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                ' United Colors of Benetton ',
                                style: textStylesubTitle,
                              ),
                              new Text(
                                ' United Colors of Benetton Men Coral red Solid  ',
                                style: textStylesubTitleLighter,
                              ),
                              new Text(
                                ' Polo Collar T-Shirt',
                                style: textStylesubTitleLighter,
                              ),
                            ],
                          ),
                          new BuynowButton(
                            text: 'BUY NOW',
                          )
                        ],
                      ),
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Text('Rs 900'),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, top: 10.0, bottom: 10.0, right: 0.0),
                            child: new Text(
                              'Rs 1,499',
                              style: new TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Text(
                              ' 40%off',
                              style: new TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
            ]));
  }
}
