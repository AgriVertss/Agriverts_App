import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomStackButton extends StatelessWidget {
  CustomStackButton({
    Key? key,
    required this.title,
    this.isShowEffect = false,
  }) : super(key: key);
  final String title;
  final bool isShowEffect;
  late Size screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
       isShowEffect ? _buildBackgroundEffect() : Container(),
         _buildButton(context),
      ],
    );
  }

  Positioned _buildButton(BuildContext context) {
    return Positioned(
      bottom: 10,
      width: screenSize.width,
      child: Center(
        child: InkWell(
          onTap: () {
            context.router.push(LiveCameraView());
          },
          child: Container(
            width: screenSize.width * 0.6,
            height: 50,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned _buildBackgroundEffect() {
    return Positioned(
      bottom: 0,
      width: screenSize.width,
      child: Container(
        width: screenSize.width,
        height: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.green.shade200],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ),
    );
  }
}
