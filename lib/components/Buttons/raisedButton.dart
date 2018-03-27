import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return new Container(
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
        child: new Icon(trailingIcon),
      ),
    );
  }

  FloatingButton(this.trailingIcon);
}
