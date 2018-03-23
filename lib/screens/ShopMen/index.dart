import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'style.dart';
import 'package:ecommerce_pro/components/ShopMencard.dart';
import 'package:ecommerce_pro/components/CustomCardAccount.dart';
import 'package:ecommerce_pro/components/CustomCardAccountSub.dart';
import 'package:ecommerce_pro/components/Buttons/BottomNavigation/test1.dart';

class ShopMen extends StatefulWidget {
  ShopMen({Key key}) : super(key: key);
  @override
  ShopMenState createState() => new ShopMenState();
}

class ShopMenState extends State<ShopMen> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  bool test = true;
  bool test1 = true;
  bool test2 = true;
  bool test3 = true;
  bool test4 = true;
  bool test5 = true;
  /*  _onPressed() {
    print("Button tapped");
  } */

  void changeState() {
    setState(() {
      test = !test;
    });
  }

  void changeState1() {
    setState(() {
      test1 = !test1;
    });
  }

  void changeState2() {
    setState(() {
      test2 = !test2;
    });
  }

  void changeState3() {
    setState(() {
      test3 = !test3;
    });
  }

  void changeState4() {
    setState(() {
      test4 = !test4;
    });
  }

  void changeState5() {
    setState(() {
      test5 = !test5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "SHOP MEN'S",
          style: textStylew600,
        ),
        actions: <Widget>[
          new Icon(
            Icons.search,
            color: Colors.black,
            size: 25.0,
          ),
        ],
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).maybePop("/HomewithTab");
            }),
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: new Image(
              image: menclothing,
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: new Column(
              children: <Widget>[
                new Text('Winter Style Sorted',
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                new Text(
                  'Hand-Picked Authenticity',
                  style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                    //fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          (test
              ? (new CustomCardAccount(
                  text: 'Topwear',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState,
                ))
              : (new CustomCardAccountSub(
                  text: 'Topwear',
                  text1: 'T-Shirts',
                  text2: 'Casual Shirts',
                  text3: 'Formal Shirts',
                  changstate: changeState,
                ))),
          (test1
              ? (new CustomCardAccount(
                  text: 'Bottomwear',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState1,
                ))
              : (new CustomCardAccountSub(
                  text: 'Bottomwear',
                  text1: 'Active T-shirts',
                  text2: 'Track Pants',
                  text3: 'Sport Pants',
                  changstate: changeState1,
                ))),
          (test2
              ? (new CustomCardAccount(
                  text: 'Indian & Festive Wear',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState2,
                ))
              : (new CustomCardAccountSub(
                  text: 'Indian & Festive Wear',
                  text1: 'Active T-shirts',
                  text2: 'Track Pants',
                  text3: 'Sport Pants',
                  changstate: changeState2,
                ))),
          (test3
              ? (new CustomCardAccount(
                  text: 'Sports & Active Wear',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState3,
                ))
              : (new CustomCardAccountSub(
                  text: 'Sports & Active Wear',
                  text1: 'Active T-shirts',
                  text2: 'Track Pants',
                  text3: 'Sport Pants',
                  changstate: changeState3,
                ))),
          (test4
              ? (new CustomCardAccount(
                  text: 'Plus Size',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState4,
                ))
              : (new CustomCardAccountSub(
                  text: 'Plus Size',
                  text1: 'Active T-shirts',
                  text2: 'Track Pants',
                  text3: 'Sport Pants',
                  changstate: changeState4,
                ))),
          (test5
              ? (new CustomCardAccount(
                  text: 'Footwear',
                  trailingIcon: Icons.arrow_drop_down,
                  changstate: changeState5,
                ))
              : (new CustomCardAccountSub(
                  text: 'Footwear',
                  text1: 'Active T-shirts',
                  text2: 'Track Pants',
                  text3: 'Sport Pants',
                  changstate: changeState5,
                ))),
        ],
      ),
    );
  }
}
