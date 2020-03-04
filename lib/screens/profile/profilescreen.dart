import 'package:flutter/material.dart';
import 'package:nims/containers/auth/fpw_form.dart';
import 'package:nims/containers/measurement/select_user_form.dart';
import 'package:nims/screens/profile/profileproperties.dart';

import 'package:nims/styles/colors.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(.5), 
              BlendMode.darken
          ),
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/Screenshot_20191123-140903_WhatsApp@2x.png'),
              alignment: Alignment(0, 9)),
        ),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   'PROFILE',
                
              //   textAlign: TextAlign.center,
              //   style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600  ),
              // ),
              SizedBox(
                height: 100.0,
              ),
              new Container(
                height: MediaQuery.of(context).size.height * .60,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                        child: ProfileProperties(),
                // child: new SelectUserForm(),
              )
            ]),
      ),
    );
  }
}
