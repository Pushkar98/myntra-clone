import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';

class ProductDetailTab extends StatelessWidget {
  final String completed;
  final String overdue;
  final double height;
  final double width;
  ProductDetailTab({
    this.completed,
    this.overdue,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return (new Row(
      children: <Widget>[
        new Container(
          width: width / 2,
          height: height / 6,
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: Colors.black12,
          ),
          child: new Center(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Icon(Icons.access_alarm),
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
        ),
        new Container(
          width: width / 2,
          height: height / 6,
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: Colors.green,
          ),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Icon(Icons.shopping_cart),
                new Text("GO TO BAG",
                    style: new TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Roboto",
                        color: whiteColor)),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
