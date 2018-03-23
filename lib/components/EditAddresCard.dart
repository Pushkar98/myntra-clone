import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';

class EditAddressCard extends StatelessWidget {
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(
              left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
          child: new Row(
            // direction: Axis.horizontal,
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new InkWell(
                    child: new Container(
                      child: new Text(
                        defaultTargetPlatform == TargetPlatform.android
                            ? text
                            : text,
                        style: textStylePayment2,
                      ),
                      // width: screenSize.width - 30,
                      height: screenSize.height / 17.8,
                      width: screenSize.width / 3.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                      alignment: FractionalOffset.center,
                      decoration: new BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(0.2)),
                      ),
                    ),
                  ),
                  new Text('  '),
                  new InkWell(
                    child: new Container(
                      child: new Text(
                        defaultTargetPlatform == TargetPlatform.android
                            ? text1
                            : text1,
                        style: textStylePayment2,
                      ),
                      // width: screenSize.width - 30,
                      height: screenSize.height / 17.8,
                      width: screenSize.width / 3.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                      alignment: FractionalOffset.center,
                      decoration: new BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(0.2)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  EditAddressCard({
    this.text,
    this.text1,
  });
}
