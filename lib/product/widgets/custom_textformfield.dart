import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/style_constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    bool isObscure = false,
    required TextEditingController controller,
    required String label,
  }) : super(
          textInputAction: TextInputAction.next,
          controller: controller,
          obscureText: isObscure,
          showCursor: false,
          decoration: InputDecoration(
            hintStyle: MyTextStyles.miniStyle.copyWith(
              color: Colors.black,
            ),
            contentPadding: EdgeInsets.all(
              15,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.primaryColor,
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            errorStyle: TextStyle(
              color: Colors.red,
              fontSize: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            label: Text(
              label,
              style: MyTextStyles.miniStyle.copyWith(
                color: Colors.black54,
              ),
            ),
          ),
        );
}
