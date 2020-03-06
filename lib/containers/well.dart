import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget appWell({label,width}) {
  return new Container( 
    width: width,
    decoration: BoxDecoration(
      color:  colorStyles['grey']
    ),
    padding: EdgeInsets.symmetric(
      vertical: 20,horizontal: 8
    ),
    child: new Text('$label',style: TextStyle(
      color: colorStyles['yellow'],fontSize: 14,
      fontWeight: FontWeight.w600
    ),),
  );
}
