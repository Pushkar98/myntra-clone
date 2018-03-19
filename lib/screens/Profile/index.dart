import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
        decoration: new BoxDecoration(image: backgroundImage),
        child: new Container(
//      color: Colors.white,
          decoration: new BoxDecoration(
              // color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
//              width: 0.3,
                      //color: Colors.black26,
                      ))),
          child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: new ListTile(
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image(
                    image: profile,
                    height: 150.0,
                    width: 70.0,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, bottom: 0.0, top: 45.0),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, top: 0.0, bottom: 20.0, right: 0.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Harshita'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
