import 'package:flutter/material.dart';

import 'package:ecommerce_pro/screens/Profile/index.dart' as Profile;
import 'package:ecommerce_pro/screens/ShopMen/index.dart' as ShopMen;
import 'package:ecommerce_pro/screens/Home/index.dart' as Home;

import 'package:ecommerce_pro/screens/Categories/index.dart' as Categories;
import 'package:ecommerce_pro/screens/Bag/index.dart' as Bag;
import 'package:ecommerce_pro/screens/Notification/index.dart' as Notifications;

class HomeWithTab1 extends StatefulWidget {
  HomeWithTab1({Key key}) : super(key: key);
  @override
  _HomeWithTab1State createState() => new _HomeWithTab1State();
}

class _HomeWithTab1State extends State<HomeWithTab1>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller = new TabController(length: 6, vsync: this);
    Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: new Color.fromRGBO(255, 255, 255, 1.0),
      body: new TabBarView(
        children: <Widget>[
          new ShopMen.ShopMen(),
          new Categories.Categories(),
          new Home.HomeScreen(),
          new Notifications.Notifications(),
          new Bag.Bag(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Container(
        height: screenSize.height / 10,
        decoration: new BoxDecoration(
            //color: Theme.of(context).primaryColor,
            ),
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.home,
                    size: 25.0,
                    color: Colors.grey.shade400,
                  ),
                  new Text("Home"),
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.category,
                    size: 25.0,
                    color: Colors.grey.shade400,
                  ),
                  new Text("Categories")
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.account_box,
                    size: 25.0,
                    color: Colors.grey.shade400,
                  ),
                  new Text("Profile")
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.notifications,
                    size: 25.0,
                    color: Colors.grey.shade400,
                  ),
                  new Text("Notification")
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.card_travel,
                    size: 25.0,
                    color: Colors.grey.shade400,
                  ),
                  new Text("Bag")
                ],
              ),
            ),
          ],
          indicatorColor: Colors.blue,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          controller: controller,
          labelStyle: new TextStyle(
            fontSize: 10.0,
            color: Colors.grey[400],
            // fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
