import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
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
                'Canlı Görüntüyü Başlat',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}