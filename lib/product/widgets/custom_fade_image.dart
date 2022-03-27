import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CustomFadeInImage extends StatelessWidget {
  const CustomFadeInImage({
    Key? key,required this.imgUrl,required this.borderRadius,
  }) : super(key: key);
  final String imgUrl;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: borderRadius,
        child: FadeInImage.memoryNetwork(
          width: 120,
          placeholder: kTransparentImage,
          fit: BoxFit.cover,
          image: imgUrl,
        ));
  }
}
