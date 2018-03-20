import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/components/ProductDetailCard.dart';
import 'package:ecommerce_pro/components/ProductSizeCard.dart';
import 'package:ecommerce_pro/components/SizeCard.dart';
import 'style.dart';

class ProductDetail extends StatelessWidget {
  List<String> images = [
    "assets/b4.png",
    "assets/b4.png",
    "assets/b4.png",
  ];
  List<String> pages = ["DETAILS", "MATERIAL & CARE"];

  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
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
              Navigator.of(context).pushReplacementNamed("/HomewithTab");
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
                            /*  child: new Row(
                              children: <Widget>[new Icon(Icons.access_time)],
                            ), */
                          ),
                        );
                      }).toList()),
                      new Container(
                        alignment: new FractionalOffset(0.5, 0.95),
                        child: new TabPageSelector(
                          controller: controller,
                          color: transparentColor,
                          selectedColor: whiteColor,
                        ),
                      )
                    ],
                  ))),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: new Row(
                children: <Widget>[new Text('Black Leather Jacket')],
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 0.0, top: 10.0, bottom: 10.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                    child: new Text(
                      'Rs 1,499',
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
                    child: new Text(
                      'Rs 2,499',
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, bottom: 10.0, right: 0.0),
                    child: new Text(
                      '40% Off',
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new ProductDetailCard(
              icon: Icons.list,
              text: "Tap to get the best Price",
            ),
            new Container(
              height: 300.0,
              padding: const EdgeInsets.only(
                  left: 5.0, right: 10.0, top: 0.0, bottom: 0.0),
              decoration: new BoxDecoration(image: backgroundImage),
              child: new Column(
                children: <Widget>[
                  new ProductSizeCard(
                    icon: Icons.list,
                    text: 'Size',
                    text1: "SIZE CHART",
                  ),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                        child: new SizeCard(
                          text: "S",
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                        child: new SizeCard(
                          text: "M",
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                        child: new SizeCard(
                          text: "L",
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, top: 10.0, bottom: 10.0, right: 10.0),
                        child: new SizeCard(
                          text: "X",
                        ),
                      ),
                    ],
                  ),
                  new DefaultTabController(
                    length: 2,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          color: Colors.white,
                          height: 40.0,
                          //alignment: FractionalOffset.center,
                          child: new TabBar(
                            indicatorColor: whiteColor,
                            indicatorPadding: new EdgeInsets.all(8.0),
                            labelColor: const Color.fromRGBO(0, 0, 0, 1.0),
                            labelStyle: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                            unselectedLabelColor:
                                const Color.fromRGBO(0, 0, 0, 0.5),
                            unselectedLabelStyle: new TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16.0),
                            tabs: pages.map((String page) {
                              return new Center(child: new Text(page));
                            }).toList(),
                          ),
                        ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

