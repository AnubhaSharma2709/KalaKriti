import 'package:flutter/material.dart';

//Constants Color for Login and Register Ui
const Color textColor = Color(0xff000000);
const Color outlineBorder = Color(0xff00337C);
const Color colorBorder = Color(0xff13005A);
const Color errorBorder = Color(0xffFF1E1E);
const Color colorButton = Color(0xffD0CBCB);
const Color backgroundColor = Color(0xffEEF2FF);
const Color spanColor = Colors.blue;

// TextForm Field Widget
const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: outlineBorder,
      width: 2,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: colorBorder,
      width: 2,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color:errorBorder,
      width: 2,
    ),
  ),
);

