import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';

class Address extends StatefulWidget {
  Address({Key key}) : super(key: key);
  @override
  AddressState createState() => new AddressState();
}

class AddressState extends State<Address> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  final TextEditingController _controller = new TextEditingController();
  String _email;
  String _password;
  void _submit() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('Alert'),
            content: new Text('Email: $_email, password: $_password'),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: new Text(
          "ADDRESS",
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
      body: new ListView(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text('ADD NEW ADDRESS'),
            ],
          ),
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your Pin Code',
                      labelText: 'Pin Code',
                    ),
                    obscureText: true,
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your Locality',
                      labelText: 'Locality',
                    ),
                    obscureText: true,
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your City',
                      labelText: 'City',
                    ),
                    obscureText: true,
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your State',
                      labelText: 'State',
                      border: InputBorder.none,
                    ),
                    //  obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: new Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 0.0, bottom: 10.0, right: 10.0),
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your Name',
                      labelText: 'Name',
                    ),
                    obscureText: true,
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your Address',
                      labelText: 'Address',
                    ),
                    obscureText: true,
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your Mobile No.',
                      labelText: 'Mobile No.',
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/confirm");
              },
              child: new Container(
                child: new Text(
                  defaultTargetPlatform == TargetPlatform.android
                      ? "SAVE"
                      : "SAVE",
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                // width: screenSize.width - 30,
                height: 35.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(0.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
