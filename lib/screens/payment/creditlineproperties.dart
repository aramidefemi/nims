import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class CreditLineProperties extends StatefulWidget {
  @override
  _CreditLinePropertiesState createState() => new _CreditLinePropertiesState();
}

class _CreditLinePropertiesState extends State<CreditLineProperties> {

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
            appWell(label: 'Enter Credit Line Code',
            width: MediaQuery.of(context).size.width),
              SizedBox(
              height: 35.0,
            ),
            FlatButton(
              color: colorStyles['text_blue'],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/card_details');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Center(
                  child: new Text(
                    'OK',
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
