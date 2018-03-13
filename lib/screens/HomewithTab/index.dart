import 'package:flutter/material.dart';

import 'package:ecommerce_pro/screens/HomeWithTab/style.dart';

import 'package:ecommerce_pro/screens/Home/index.dart' as HomeScreen;
import 'package:ecommerce_pro/screens/Login/index.dart' as Login;
import 'package:ecommerce_pro/screens/HomePro/index.dart' as HomePro;
import 'package:ecommerce_pro/screens/Categories/index.dart' as Categories;
import 'package:ecommerce_pro/screens/Bag/index.dart' as Bag;

class HomeWithTab extends StatefulWidget {
  HomeWithTab({Key key}) : super(key: key);
  @override
  _HomeWithTabState createState() => new _HomeWithTabState();
}

class _HomeWithTabState extends State<HomeWithTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller = new TabController(length: 7, vsync: this);
    Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: new Color.fromRGBO(255, 255, 255, 5.0),
      body: new TabBarView(
        children: <Widget>[
          new HomePro.HomePro(),
          new Categories.Categories(),
          new HomeScreen.HomeScreen(),
          new Login.Login(),
          new Bag.Bag(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Container(
        height: screenSize.height / 12,
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
                  ),
                  new Text("Home")
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.category,
                    size: 25.0,
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
                  ),
                  new Text("Notifications")
                ],
              ),
            ),
            new Tab(
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.card_travel,
                    size: 25.0,
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
          ),
        ),
      ),
    );
  }
}
