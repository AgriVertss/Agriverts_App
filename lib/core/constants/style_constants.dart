import 'package:agriverts/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class MyTextStyles {
  static const TextStyle defaultTextStyle = TextStyle(
    fontSize: 22,
    color: MyColors.primaryColor,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
  );

  static const TextStyle homeSubTitle = TextStyle(
    fontSize: 22,
    color: Colors.green,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle homeTitle = TextStyle(
    fontSize: 30,
    color: Colors.green,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle dialogTitle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );

  static const TextStyle miniStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: Colors.white,
  );
}
