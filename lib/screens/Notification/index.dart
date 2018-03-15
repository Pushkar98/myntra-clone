import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

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
                          padding: const EdgeInsets.only(left: 10.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text('data'),
                              new Text('data'),
                              new Text('data'),
                              new Text('data'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    subtitle: new Text("hjdhkjhkjd")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
