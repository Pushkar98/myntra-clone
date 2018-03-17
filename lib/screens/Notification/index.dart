import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/screens/Notification/style.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);
  @override
  NotificationsState createState() => new NotificationsState();
}

class NotificationsState extends State<Notifications>
    with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "NOTIFICATIONS",
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
            left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          new Card(
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
//              width: 0.3,
                    color: Colors.black26,
                  ))),
              child: new Container(
                margin:
                    const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 15.0),
                child: new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Icon(
                        Icons.notifications,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      new Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Just Under Rs 399',
                              style: textStylesubnotification,
                            ),
                            new Text(
                              'Budget-Approved Styles | Only for 2',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'hours! Hurry!',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'an hour ago',
                              style: textStylesubTitleLightNotification,
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
          new Card(
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
//              width: 0.3,
                    color: Colors.black26,
                  ))),
              child: new Container(
                margin:
                    const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 15.0),
                child: new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Icon(
                        Icons.notifications,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      new Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Just Under Rs 599',
                              style: textStylesubnotification,
                            ),
                            new Text(
                              'Great Discount | only for 10 hours! ',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'Hurry!',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              '5 hours ago',
                              style: textStylesubTitleLightNotification,
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
          new Card(
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
//              width: 0.3,
                    color: Colors.black26,
                  ))),
              child: new Container(
                margin:
                    const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 15.0),
                child: new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Icon(
                        Icons.notifications,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      new Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Up to 70% OFF!',
                              style: textStylesubnotification,
                            ),
                            new Text(
                              'Top Styles in T-shirts & Jeans |',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'Roadster | UCB | HRX & More ...',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              '9 hour ago',
                              style: textStylesubTitleLightNotification,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  subtitle: new Image(
                    image: men,
                  ),
                ),
              ),
            ),
          ),
          new Card(
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
//              width: 0.3,
                    color: Colors.black26,
                  ))),
              child: new Container(
                margin:
                    const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 15.0),
                child: new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Icon(
                        Icons.notifications,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      new Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Win vh1 upersonic Passes ',
                              style: textStylesubnotification,
                            ),
                            new Text(
                              'Pick DC styles for the concert| Tell us',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'Hurry!',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              '11  hour ago',
                              style: textStylesubTitleLightNotification,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  subtitle: new Image(
                    image: girl,
                  ),
                ),
              ),
            ),
          ),
          new Card(
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border(
                      bottom: new BorderSide(
//              width: 0.3,
                    color: Colors.black26,
                  ))),
              child: new Container(
                margin:
                    const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 15.0),
                child: new ListTile(
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Icon(
                        Icons.notifications,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      new Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'Just Under Rs 999',
                              style: textStylesubnotification,
                            ),
                            new Text(
                              'Budget-Approved Styles | Only for Kids',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              'Hurry!',
                              style: textStylesTitleubnotification,
                            ),
                            new Text(
                              '13 hour ago',
                              style: textStylesubTitleLightNotification,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  subtitle: new Image(
                    image: kids,
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
