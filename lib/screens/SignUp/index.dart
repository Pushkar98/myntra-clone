import 'package:flutter/material.dart';
import 'package:ecommerce_pro/theme/style.dart';
import 'package:ecommerce_pro/components/Buttons/commonsaveButton.dart';
import 'package:flutter/foundation.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  SignUpState createState() => new SignUpState();
}

class SignUpState extends State<SignUp> with TickerProviderStateMixin {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
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
    Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
        appBar: new AppBar(
          //backgroundColor: Theme.of(context).secondaryHeaderColor,
          backgroundColor: whiteColor,
          centerTitle: true,
          title: new Text(
            "SIGN UP",
            style: textStylew600,
          ),
          leading: new IconButton(
              icon: new Icon(
                Icons.chevron_left,
                size: 40.0,
                color: Colors.grey[500],
              ),
              onPressed: () {
                Navigator.of(context).maybePop("/login");
              }),
        ),
        body: new ListView(
          // mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 10.0),
              child: new Form(
                key: formKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      validator: (value) =>
                          !value.contains('@') ? 'Not a valid email.' : null,
                      onSaved: (val) => _email = val,
                      decoration: const InputDecoration(
                        // icon: const Icon(Icons.person),
                        hintText: 'Enter your email',
                        labelText: 'Email address',
                      ),
                    ),
                    new TextFormField(
                      validator: (val) =>
                          val.length < 6 ? 'Password too short.' : null,
                      onSaved: (val) => _password = val,
                      decoration: const InputDecoration(
                        // icon: const Icon(Icons.lock),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    new TextFormField(
                      validator: (val) =>
                          val.length < 6 ? 'Password too short.' : null,
                      onSaved: (val) => _password = val,
                      decoration: const InputDecoration(
                        //icon: const Icon(Icons.lock),
                        hintText: 'Enter your password',
                        labelText: 'Full Name',
                      ),
                      obscureText: true,
                    ),
                    new TextFormField(
                      validator: (val) =>
                          val.length < 6 ? 'Password too short.' : null,
                      onSaved: (val) => _password = val,
                      decoration: const InputDecoration(
                        // icon: const Icon(Icons.lock),
                        hintText: 'Enter your password',
                        labelText: 'Mobile Number',
                      ),
                      obscureText: true,
                    ),
                    new SaveButton(
                      text: "SIGN UP",
                      text1: "/login",
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
