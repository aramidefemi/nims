import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

class ProfileProperties extends StatefulWidget {
  @override
  _ProfilePropertiesState createState() => _ProfilePropertiesState();
}

class _ProfilePropertiesState extends State<ProfileProperties> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Text(
                          'PROFILE',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 220, top: 15),
                        child: Text(
                          'Company Name',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffE47B1B),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                    style: BorderStyle.none,
                                    color: Colors.grey.shade200)),
                          ),
                          style: TextStyle(
                            color: colorStyles['text_blue'],
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
