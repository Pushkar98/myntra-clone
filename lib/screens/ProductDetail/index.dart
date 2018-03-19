import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/components/CustomCard.dart';

class ProductDetail extends StatelessWidget {
  List<String> images = [
    "assets/b4.png",
    "assets/b4.png",
    "assets/b4.png",
  ];

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
            new CustomCard(
              icon: Icons.list,
              text: "Tap to get the best Price",
            )
          ],
        ),
      ),
    );
  }
}
