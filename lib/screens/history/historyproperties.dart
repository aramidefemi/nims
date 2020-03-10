import 'package:flutter/material.dart';

class HistoryProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10.0),
              RichText(
                  text: TextSpan(
                      text: ' Office Pant',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      children: [
                    TextSpan(
                      text: '\n Delivered',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text: '\n 22nd. Jan',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]
                )
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Divider(
            color: Color(0xff030339),
            height: 5.0,
            thickness: 1,
          ),
          SizedBox(width: 15.0),
          Padding(
            padding: const EdgeInsets.only(right: 290.0),
            child: RichText(
                text: TextSpan(
                    text: ' Danshiki',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    children: [
                  TextSpan(
                    text: '\n Delivered',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: '\n 24th. May',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]
              )
            ),
          ),
          SizedBox(height: 8.0),
          Divider(
            color: Color(0xff030339),
            height: 5.0,
            thickness: 1,
          ),
          SizedBox(width: 15.0),
          Padding(
            padding: const EdgeInsets.only(right: 220.0),
            child: RichText(
                text: TextSpan(
                    text: ' 4 pieces of kaftan',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    children: [
                  TextSpan(
                    text: '\n Delivered',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: '\n 24th. October',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              )
            ),
          ),
          SizedBox(height: 8.0),
          Divider(
            color: Color(0xff030339),
            height: 5.0,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
