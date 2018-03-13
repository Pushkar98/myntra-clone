import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/HomePro/style.dart';

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
              color: Theme.of(context).primaryColor,
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
                child: new Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Column(children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new CircleAvatar(
                            //child: new Image(image: women),
                            backgroundImage:
                                const AssetImage("assets/circle1.png"),

                            backgroundColor: Colors.grey,
                            radius: 40.0,
                          ),
                        ),
                        new Text("MEN")
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new CircleAvatar(
                            //child: new Image(image: women),
                            backgroundImage:
                                const AssetImage("assets/circle2.png"),
                            backgroundColor: Colors.grey,
                            radius: 40.0,
                          ),
                        ),
                        new Text("WOMEN")
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new CircleAvatar(
                            //child: new Image(image: women),
                            backgroundImage:
                                const AssetImage("assets/sanket.png"),
                            backgroundColor: Colors.grey,
                            radius: 40.0,
                          ),
                        ),
                        new Text("KIDS")
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new CircleAvatar(
                            //child: new Image(image: women),
                            backgroundImage:
                                const AssetImage("assets/sanket.png"),
                            backgroundColor: Colors.grey,
                            radius: 40.0,
                          ),
                        ),
                        new Text("SALE")
                      ]),
                      new Column(children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new CircleAvatar(
                            //child: new Image(image: women),
                            backgroundImage:
                                const AssetImage("assets/sanket.png"),
                            backgroundColor: Colors.grey,
                            radius: 40.0,
                          ),
                        ),
                        new Text("HOME")
                      ]),
                    ]),
              )),
              new Card(
                child: new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
                    child: new Image(
                      image: bannersale,
                    )),
              ),
              new Card(
                  child: new Column(
                children: [
                  new Row(
                    children: <Widget>[
                      new Text('Trending Now'),
                    ],
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
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
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
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
                                height: 200.0,
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
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
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
                        ]),
                      ],
                    ),
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Row(
                    children: <Widget>[
                      new Text('Todays Pick'),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 10.0,
                                bottom: 10.0,
                                right: 10.0),
                            child: new Image(
                              image: glasses,
                              height: 330.0,
                              width: 330.0,
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
                  new Row(
                    children: <Widget>[
                      new Text('Just In'),
                    ],
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                                image: sanket,
                                height: 120.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Image(
                                image: sanket,
                                height: 120.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Image(
                                image: sanket,
                                height: 120.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
                        ]),
                        new Column(children: <Widget>[
                          new Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Image(
                                image: sanket,
                                height: 120.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              )),
                          new Text("The Grunge Collection"),
                          new Text("data"),
                        ]),
                      ],
                    ),
                  ),
                ],
              )),
              new Card(
                  child: new Column(
                children: [
                  new Row(
                    children: <Widget>[
                      new Text('Since you haveshown interest in Tshirts '),
                    ],
                  ),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                                image: sanket,
                                height: 150.0,
                                width: 150.0,
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
                                image: sanket,
                                height: 150.0,
                                width: 150.0,
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
                                image: sanket,
                                height: 150.0,
                                width: 150.0,
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
                                image: sanket,
                                height: 150.0,
                                width: 150.0,
                                fit: BoxFit.cover,
                              )),
                        ]),
                      ],
                    ),
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Text('United Colors of Benetton '),
                              new Text(
                                  'United Colors of Benetton Men Coral red Solid'),
                              new Text('data'),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              /* new RaisedButton(
                                child: new Text('Login'),
                              ), */
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )),
            ]));
  }
}
