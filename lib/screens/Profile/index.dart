import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:flutter/foundation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new ListView(
        padding:
            const EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0, right: 0.0),
        children: <Widget>[
          new Container(
            height: 220.0,
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 25.0, bottom: 0.0),
            decoration: new BoxDecoration(image: backgroundImage),
            child: new Container(
              //decoration: new BoxDecoration(image: backgroundImage),
              child: new Padding(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      width: 90.0,
                      height: 90.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: const ExactAssetImage('assets/1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, bottom: 35.0, top: 15.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                top: 0.0, left: 7.0, bottom: 15.0, right: 10.0),
                            child: new Text('Harshita',
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                )),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0,
                                left: 7.0,
                                bottom: 15.0,
                                right: 10.0),
                            child: new Text('Add Bio',
                                style: new TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 0.0)),
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 7.0, right: 10.0),
                            child: new Text('O Following  |  O Followers',
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10.0),
              ),
              color: Colors.transparent,
              margin: const EdgeInsets.only(bottom: 5.0),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(
                left: 0.0, top: 0.0, bottom: 0.0, right: 0.0),
            child: new Container(
              height: 50.0,
              decoration: new BoxDecoration(image: backgroundImage1),
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    'Wishlist',
                    style: textprofile,
                  ),
                  new Text(
                    '|',
                    style: new TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                  new Text(
                    '0 Collections',
                    style: textprofile,
                  ),
                  new Text(
                    '|',
                    style: new TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                  new Text(
                    '0 Shots',
                    style: textprofile,
                  ),
                ],
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/signup");
              },
              child: new Container(
                child: new Text(
                  defaultTargetPlatform == TargetPlatform.android
                      ? "+POST"
                      : "+POST",
                  style: const TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
                // width: screenSize.width - 30,
                height: 45.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                  border: new Border.all(
                    color: Colors.blue[400],
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
