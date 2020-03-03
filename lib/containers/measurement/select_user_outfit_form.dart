import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/containers/button_alt.dart';
import 'package:nims/containers/input.dart';
import 'package:nims/containers/measurement/widget/select_user_widgets.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';

import 'package:nims/presentation/platform_adaptive.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class SelectUserOutfitForm extends StatefulWidget {
  @override
  _SelectUserOutfitFormState createState() => new _SelectUserOutfitFormState();
}

class _SelectUserOutfitFormState extends State<SelectUserOutfitForm> {
  final formKey = new GlobalKey<FormState>();
  bool newClients = true;
  String selectType = '';
  TextEditingController _user;

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
      return new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 40.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Client Name',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: colorStyles['text_blue'],
              ),
            ),
             SizedBox(
              height: 15.0,
            ),
            appWell(label: 'Kola Banker',width: MediaQuery.of(context).size.width),
              SizedBox(
              height: 35.0,
            ),
            Text(
              'Outfit Type',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: colorStyles['text_blue'],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            DropDownField(
                value: cities[0],
                required: true,
                items: cities,
                strict: false,
                setter: (dynamic newValue) {
                  selectType = newValue;
                }),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              color: colorStyles['text_blue'],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/user-measurement-outfit');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Center(
                  child: new Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
