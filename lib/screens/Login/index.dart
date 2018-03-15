import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:flutter/foundation.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> with TickerProviderStateMixin {
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
          "LOGIN",
          style: textStylew600,
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.grey[500],
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/HomewithTab");
            }),
      ),
      body: new ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            child: new Form(
              key: formKey,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    validator: (value) =>
                        !value.contains('@') ? 'Not a valid email.' : null,
                    onSaved: (val) => _email = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.person),
                      hintText: 'Enter your email',
                      labelText: 'Email address',
                    ),
                  ),
                  new TextFormField(
                    validator: (val) =>
                        val.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                    decoration: const InputDecoration(
                      //icon: const Icon(Icons.lock),
                      hintText: 'Enter your password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: new InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      child: new Container(
                        child: new Text(
                          defaultTargetPlatform == TargetPlatform.android
                              ? "LOGIN"
                              : "LOGIN",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18.0),
                        ),
                        // width: screenSize.width - 30,
                        height: 45.0,

//                margin: new EdgeInsets.only(
//                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                        alignment: FractionalOffset.center,
                        decoration: new BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, bottom: 20.0, top: 10.0),
                    child: new Text(
                      defaultTargetPlatform == TargetPlatform.android
                          ? "FORGOT PASSWORD?"
                          : "FORGOT PASSWORD?",
                      style: textStylebottomcategory,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
