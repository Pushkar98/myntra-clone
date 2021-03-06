import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/components/ProductDetailCard.dart';
import 'package:ecommerce_pro/components/ProductSizeCard.dart';
import 'package:ecommerce_pro/components/SizeCard.dart';
import 'Details.dart';
import 'style.dart';
import 'package:flutter/foundation.dart';
import 'package:ecommerce_pro/components/ProductDetailTab.dart';
import 'package:ecommerce_pro/components/Buttons/raisedButton.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);
  @override
  ProductDetailState createState() => new ProductDetailState();
}

enum MyDialogAction { yes }

class ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {
  List<String> images = [
    "assets/b4.png",
    "assets/b3.png",
    "assets/b5.png",
  ];
  List<String> pages = ["DETAILS", "MATERIAL & CARE"];
  bool test = true;
  bool test1 = true;
  bool test2 = true;
  bool test3 = true;

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

  void _dialogResult(MyDialogAction value) {
    Navigator.pop(context);
  }

  void _showAlert() {
    AlertDialog dialog = new AlertDialog(
      content: new Text(
        "Please Select a Size",
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            _dialogResult(MyDialogAction.yes);
          },
          child: new Text("OK!"),
        )
      ],
    );
    showDialog(context: context, child: dialog);
  }

  @override
  Widget build(BuildContext context) {
    final TabController controller = new TabController(length: 3, vsync: this);
    final TabController controller1 = new TabController(length: 2, vsync: this);
    final TabController controller2 = new TabController(length: 2, vsync: this);

    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "PRODUCT DETAIL",
          style: textStylew600,
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).maybePop("/productList");
            }),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: 230.0,
              child: new DefaultTabController(
                  length: images.length,
                  child: new Container(
                      child: new Stack(
                    children: <Widget>[
                      new TabBarView(
                          children: images.map((String image) {
                        return new GestureDetector(
                          child: new Container(
                            height: 260.0,
                            padding: new EdgeInsets.only(
                                top: 20.0,
                                left: 20.0,
                                right: 20.0,
                                bottom: 40.0),
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new ExactAssetImage(image),
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                top: 140.0,
                                bottom: 0.0,
                                right: 0.0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.transparent,
                                  border: new Border(
                                    bottom: new BorderSide(
                                      width: 0.3,
                                      color: Colors.transparent,
                                    ),
                                    top: new BorderSide(
                                      width: 0.3,
                                      color: Colors.grey,
                                    ),
                                    left: new BorderSide(
                                      width: 0.3,
                                      color: Colors.grey,
                                    ),
                                    right: new BorderSide(
                                      width: 0.3,
                                      color: Colors.grey,
                                    ),
                                  )),
                              child: new Container(
                                height: screenSize.height / 14.0,
                                width: screenSize.width / 6.5,
                                decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    border: new Border(
                                      bottom: new BorderSide(
                                        width: 0.3,
                                        color: Colors.grey,
                                      ),
                                      top: new BorderSide(
                                        width: 0.3,
                                        color: Colors.grey,
                                      ),
                                      left: new BorderSide(
                                        width: 0.3,
                                        color: Colors.grey,
                                      ),
                                      right: new BorderSide(
                                        width: 0.3,
                                        color: Colors.grey,
                                      ),
                                    )),

                                // color: Colors.grey,
                                child: new Icon(Icons.info_outline),
                              ),
                            ),
                          ),
                        ],
                      ),
                      new Container(
                        alignment: new FractionalOffset(0.5, 0.95),
                        child: new TabPageSelector(
                          controller: controller,
                          color: transparentColor,
                          selectedColor: whiteColor,
                        ),
                      ),
                    ],
                  ))),
            ),
            new Container(
              decoration: new BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: new Row(
                children: <Widget>[
                  new Text(
                    'Black Leather Jacket',
                    style: textStylew600,
                  )
                ],
              ),
            ),
            new Container(
              decoration: new BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(
                  left: 8.0, right: 0.0, top: 10.0, bottom: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                    child: new Text(
                      '\$ 1,499',
                      style: textPrice,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                    child: new Text(
                      '\$ 2,499',
                      style: textDiscount,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, bottom: 10.0, right: 0.0),
                    child: new Text(
                      '40% Off',
                      style: textPriceActual,
                    ),
                  ),
                ],
              ),
            ),
            new ProductDetailCard(
              icon: Icons.local_offer,
              text: "Tap to get the best Price",
            ),
            new Container(
              height: 500.0,
              padding: const EdgeInsets.only(
                  left: 2.0, right: 10.0, top: 0.0, bottom: 0.0),
              decoration: new BoxDecoration(image: backgroundImage),
              child: new Column(
                children: <Widget>[
                  new ProductSizeCard(
                    icon: Icons.straighten,
                    text: 'Size',
                    text1: "SIZE CHART",
                  ),
                  new Container(
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new SizeCard(
                            text: "S",
                            color: (test ? Colors.blue : Colors.green),
                            changstate: changeState,
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new SizeCard(
                            text: "M",
                            color: (test1 ? Colors.blue : Colors.green),
                            changstate: changeState1,
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new SizeCard(
                            text: "L",
                            color: (test2 ? Colors.blue : Colors.green),
                            changstate: changeState2,
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                          child: new SizeCard(
                            text: "X",
                            color: (test3 ? Colors.blue : Colors.green),
                            changstate: changeState3,
                          ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                  new TabBar(
                    indicatorColor: Colors.blueGrey,
                    labelColor: Colors.black,
                    labelStyle: new TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 14.0),
                    unselectedLabelColor: Colors.black45,
                    unselectedLabelStyle: new TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 14.0),
                    controller: controller1,
                    tabs: pages.map((String page) {
                      return new Tab(
                        child: new Container(
                          child: new Center(
                              heightFactor: 2.0, child: new Text(page)),
                        ),
                      );
                    }).toList(),
                  ),
                  new Container(
                    height: screenSize.height / 10.0,
                    // margin: const EdgeInsets.only(bottom: 5.0),
                    child: new TabBarView(
                      children: <Widget>[
                        new Detail(
                          text:
                              'Stay warm and trendy this winter with this trendy sweater from nouk.Layer it on a tee, or just team it with a pair of jeans and boots when you head out this winter',
                        ),
                        new Detail(
                          text:
                              '76% acrylic, 19% polyster, 5% metallic yarn Hand-wash cold',
                        )
                      ],
                      controller: controller1,
                    ),
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border(
                            bottom: new BorderSide(
//              width: 0.3,
                          color: Colors.black26,
                        ))),
                    child: new Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "STYLE NOTE",
                              style: textDescriptionheader,
                            )
                          ],
                        )),
                  ),
                  new Container(
//      color: Colors.white,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border(
                            bottom: new BorderSide(
//              width: 0.3,
                          color: Colors.black26,
                        ))),
                    child: new Container(
                        margin: const EdgeInsets.only(
                            left: 3.0, top: 10.0, bottom: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "Fashion has taken today's youth by surprise, and the avaibility of numerous options just leaves them spoilt of choice. Online stores fuel fashion by making the latest trending dresses, accessories, and apparels available to you within a few clicks. Shopping is no longer a day long affair with online shopping",
                              style: textDescription,
                            ),
                            new Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text(
                                    'MORE INFO',
                                    style: textDescriptionheader,
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  new Container(
                    //height: screenSize.height / 9.4,
                    width: screenSize.width / 0.8,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border(
                            bottom: new BorderSide(
//              width: 0.3,
                          color: Colors.black26,
                        ))),
                    child: new Container(
                        // height: screenSize.height / 11.0,
                        margin: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 0.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "PRODUCT CODE: 1760167",
                              style: textDescription,
                            ),
                            new Text(
                              'Sold By: Funfash',
                              style: textDescription,
                            ),
                            new Text(
                              'Tax info: Applicable GST will be charged at the time of checkout',
                              style: textDescription,
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        height: screenSize.height / 12,
        decoration: new BoxDecoration(
          color: Colors.green,
        ),
        child: new TabBar(
          tabs: <Container>[
            new Container(
              height: screenSize.height / 12,
              width: screenSize.width / 3,
              decoration: new BoxDecoration(color: Colors.blue[600]),
              padding: const EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  new Text("SAVED",
                      style: new TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          color: Colors.white)),
                ],
              ),
            ),
            new Container(
              height: screenSize.height / 15,
              width: screenSize.width / 2,
              decoration: new BoxDecoration(color: Colors.green),
              padding: const EdgeInsets.only(
                  left: 0.0, right: 20.0, top: 0.0, bottom: 0.0),
              child: new GestureDetector(
                onTap: () {
                  ((test && test1 && test2 && test3)
                      ? _showAlert()
                      : Navigator.of(context).pushNamed('/HomewithTab'));
                },
                child: new Row(
                  children: [
                    new Icon(
                      Icons.card_travel,
                      color: Colors.white,
                    ),
                    new Text("GO TO BAG",
                        style: new TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color: Colors.white)),
                  ],
                ),
              ),
            )
          ],
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white30,
          controller: controller2,
          labelStyle: new TextStyle(
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
