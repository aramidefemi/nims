import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/screens/profile/profilescreen.dart';

import 'package:nims/styles/colors.dart';
import 'package:nims/actions/auth_actions.dart';
import 'package:nims/models/app_state.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (store) => (BuildContext context) {
              store.dispatch(logout(context));
            },
        builder: (BuildContext context, logout) => new Drawer(
                child: new ListView(
              children: <Widget>[
                new Container(
                  height: 200.0,
                  child: new UserAccountsDrawerHeader(
                    accountEmail: Text('Text@gmail.com'),
                    accountName: Text('NIMS'),
                    decoration: BoxDecoration(
                      color: colorStyles['text_blue'],
                    ),
                    currentAccountPicture: Image.asset('assets/dash.png'),
                  ),
                  color: colorStyles['text_blue'],
                ),
                new ListTile(
                    leading: new Icon(Icons.person),
                    title: new Text('Profile'),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile-screen');
                    }),
                new ListTile(
                    leading: new Icon(Icons.info),
                    title: new Text('Track Orders'),
                    onTap: () => print('you pressed track orders')),
                new ListTile(
                    leading: new Icon(Icons.favorite),
                    title: new Text('Favourite'),
                    onTap: () => print('you pressed favourite')),
                new ListTile(
                    leading: new Icon(Icons.favorite),
                    title: new Text('History'),
                    onTap: () => print('you pressed history')),
                new Divider(
                  color: colorStyles['text_blue'],
                ),
                new ListTile(
                    leading: new Icon(Icons.exit_to_app),
                    title: new Text('Sign Out'),
                    onTap: () => logout(context)
                  ),
              ],
            )
          )
        );
  }
}
