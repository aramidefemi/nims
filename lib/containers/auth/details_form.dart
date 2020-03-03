import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
 
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class DetailsForm extends StatefulWidget {
  @override
  _DetailsFormState createState() => new _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController _company; 
  TextEditingController _email; 
  TextEditingController _address; 
  TextEditingController _phone; 

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
                  password: false, controller: _company, label: 'Company Name'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: false, controller: _email, label: 'Email'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: false, controller: _address, label: 'Office Address'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: false, controller: _phone, label: 'Phone No'),
            ),
            SizedBox(
              height: 40.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: appbutton(
                  action: () {
                    _submit();
                    // loginAction(context, _username, _password);
                  },
                  label: 'GET STARTED'),
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
