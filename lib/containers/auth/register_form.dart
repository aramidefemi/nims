import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
 
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => new _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController _username; 
  TextEditingController _password; 
  TextEditingController _repassword; 

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
      return new Form(
        key: formKey,
        child: new Column(
          children: [
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: false, controller: _username, label: 'User Name'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: true, controller: _password, label: 'Password'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: true, controller: _repassword, label: 'Re-write Password'),
            ),
            SizedBox(
              height: 40.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: appbutton(
                  action: () {
                    Navigator.pushNamed(context, '/register-details');
                  },
                  label: 'SIGN UP'),
            ),
               SizedBox(
              height: 10.0,
            ),
               ],
        ),
      );
    });
  }
}
