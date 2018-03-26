import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class CustomCardAccountSub extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final VoidCallback changstate;

  @override
  Widget build(BuildContext context) {
    return new Column(
      //color: Colors.white,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(
              left: 0.0, top: 0.0, bottom: 0.0, right: 0.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: new Container(
            child: new ListTile(
              onTap: changstate,
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Text(
                        text,
                        style: new TextStyle(
                            color: new Color.fromRGBO(0, 0, 0, 8.0),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      )),
                ],
              ),
              trailing: new Icon(
                Icons.arrow_drop_up,
                size: 20.0,
              ),
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 0.0, right: 0.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: new Container(
            child: new ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/productList');
              },
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Text(
                        text2,
                        style: new TextStyle(
                            color: new Color.fromRGBO(0, 0, 0, 8.0),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      )),
                ],
              ),
              trailing: new Icon(
                Icons.arrow_right,
                size: 20.0,
              ),
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 0.0, right: 0.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: new Container(
            child: new ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/productList');
              },
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Text(
                        text2,
                        style: new TextStyle(
                            color: new Color.fromRGBO(0, 0, 0, 8.0),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      )),
                ],
              ),
              trailing: new Icon(
                Icons.arrow_right,
                size: 20.0,
              ),
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 0.0, right: 0.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: new BorderSide(
                width: 0.5,
                color: Colors.grey,
              ))),
          child: new Container(
            child: new ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/productList');
              },
              title: new Row(
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new Text(
                        text3,
                        style: new TextStyle(
                            color: new Color.fromRGBO(0, 0, 0, 8.0),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      )),
                ],
              ),
              trailing: new Icon(
                Icons.arrow_right,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  CustomCardAccountSub(
      {this.text, this.text1, this.text2, this.text3, this.changstate});
}
