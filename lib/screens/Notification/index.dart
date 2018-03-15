import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class Notification extends StatefulWidget {
  Notification({Key key}) : super(key: key);
  @override
  NotificationState createState() => new NotificationState();
}

class NotificationState extends State<Notification>
    with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();

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
    );
  }
}
