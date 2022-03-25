import 'package:agriverts/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends ElevatedButton {
  CustomElevatedButton(
      {required VoidCallback? onPressed, required Widget? child})
      : super(
          onPressed: onPressed,
          child: child,
          style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
          ),
        );
}
