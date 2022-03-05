import 'package:agriverts/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: MyColors.primaryColor,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
  );
}