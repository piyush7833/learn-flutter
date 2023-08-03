import 'dart:ui';

//in style and theme of main.dart their are very less options so we can add extra from here
import 'package:flutter/material.dart';

TextStyle myTextStyle10() {
  return TextStyle(fontSize: 10, color: Colors.deepPurpleAccent);
}

TextStyle myTextStyle5({
  Color textColor = Colors.greenAccent,
  FontWeight fontWeight = FontWeight
      .w600, //paramter of function with default values. we can also change it while calling function
}) {
  return TextStyle(
    fontSize: 20,
    color: textColor,
    fontWeight: fontWeight,
  );
}
