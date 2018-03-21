import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/HomePro/style.dart';
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
                    Navigator.of(context).pushNamed('/shopmen');
                  },
                  child: new Row(

                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Column(children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new CircleAvatar(
                              //child: new Image(image: women),
                              backgroundImage:
                                  const AssetImage("assets/circle1.png"),

                              backgroundColor: Colors.grey,
                              radius: 40.0,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 0.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Text(
                                'MEN',
                                style: textStylesub,
                              )),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new CircleAvatar(
                              //child: new Image(image: women),
                              backgroundImage:
                                  const AssetImage("assets/circle2.png"),
                              backgroundColor: Colors.grey,
                              radius: 40.0,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 0.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Text(
                                'WOMEN',
                                style: textStylesub,
                              )),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new CircleAvatar(
                              //child: new Image(image: women),
                              backgroundImage:
                                  const AssetImage("assets/circle3.png"),
                              backgroundColor: Colors.grey,
                              radius: 40.0,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 0.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Text(
                                'KIDS',
                                style: textStylesub,
                              )),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new CircleAvatar(
                              //child: new Image(image: women),
                              backgroundImage:
                                  const AssetImage("assets/circle4.png"),
                              backgroundColor: Colors.grey,
                              radius: 40.0,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 0.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Text(
                                'Home',
                                style: textStylesub,
                              )),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new CircleAvatar(
                              //child: new Image(image: women),
                              backgroundImage:
                                  const AssetImage("assets/circle5.png"),
                              backgroundColor: Colors.grey,
                              radius: 40.0,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 0.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Text(
                                'EOS',
                                style: textStylesub,
                              )),
                        ]),
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
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: women1,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                )),
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
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: men,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                )),
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
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: bag,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                )),
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
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: women1,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                )),
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
                                left: 10.0,
                                top: 0.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: glasses,
                              height: 330.0,
                              width: 360.0,
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
                          new Column(children: <Widget>[
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: girl,
                                  height: 120.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                )),
                            new Text(
                              "We Love Winters!",
                              style: textStylesubTitle,
                            ),
                            new Text(
                              "Stay Warm & Cozy",
                              style: textStylesubTitleLight,
                            ),
                          ]),
                          new Column(children: <Widget>[
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 0.0,
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
                                    top: 0.0,
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
                                    top: 0.0,
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
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Container(
                    margin: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 5.0, left: 10.0),
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 10.0, right: 2.0),
                    height: 40.0,
                    color: Colors.white,
                    child: new ListTile(
                        title: new Row(
                      children: <Widget>[
                        new Text(
                          'Since youve shown interest in ',
                          style: textStyleheader,
                        ),
                        new Text('Tshirts',
                            style: new TextStyle(
                              color: const Color.fromRGBO(0, 0, 255, 1.0),
                              fontSize: 14.0,
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
                          new Column(children: <Widget>[
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: women1,
                                  height: 200.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                )),
                          ]),
                          new Column(children: <Widget>[
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: girl,
                                  height: 200.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                )),
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
                                  height: 200.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                )),
                          ]),
                          new Column(children: <Widget>[
                            new Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                    right: 10.0),
                                child: new Image(
                                  image: women1,
                                  height: 200.0,
                                  width: 200.0,
                                  fit: BoxFit.cover,
                                )),
                          ]),
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
                                'United Colors of Benetton ',
                                style: textStylesubTitle,
                              ),
                              new Text(
                                'United Colors of Benetton Men Coral red Solid',
                                style: textStylesubTitleLighter,
                              ),
                              new Text(
                                'Polo Collar T-Shirt',
                                style: textStylesubTitleLighter,
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new InkWell(
                                onTap: () {
                                  Navigator
                                      .of(context)
                                      .pushNamed("/PhoneNumber");
                                },
                                child: new Container(
                                  child: new Text(
                                    defaultTargetPlatform ==
                                            TargetPlatform.android
                                        ? "BUY NOW"
                                        : "BUY NOW",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // width: screenSize.width - 30,
                                  height: 45.0,
                                  width: 110.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                                  alignment: FractionalOffset.center,
                                  decoration: new BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(0.2)),
                                  ),
                                ),
                              ),
                            ],
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
