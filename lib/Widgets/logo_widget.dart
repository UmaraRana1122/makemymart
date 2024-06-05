import 'package:flutter/material.dart';

Widget logoWidget(
  String text
) {
  return Container(
    padding: EdgeInsets.only(
      bottom: 5, // Space between underline and text
    ),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: Color(0xff999999),
      width: 1.0, // Underline thickness
    ))),
    child: Text(
    text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
