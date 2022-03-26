import 'package:agriverts/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

SnackBar displaySnackBar(
    {required String message, String? actionMessage, VoidCallback? onClick}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    elevation: 3.0,
    content: Text(
      message,
      style: TextStyle(color: Colors.white, fontSize: 14.0),
    ),
    action: (actionMessage != null)
        ? SnackBarAction(
            textColor: Colors.white,
            label: actionMessage,
            onPressed: () {
              return onClick!();
            },
          )
        : null,
    duration: Duration(seconds: 2),
    backgroundColor: MyColors.primaryColor,
  );
}
