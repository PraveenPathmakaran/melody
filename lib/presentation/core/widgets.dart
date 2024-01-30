import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'resourse_manager/assets_manager.dart';

class CustomImageWidget extends StatelessWidget {
  final Uint8List? image;
  final double height;
  final double width;

  const CustomImageWidget({
    super.key,
    required this.image,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    try {
      if (image != null) {
        return Image.memory(
          image!,
          fit: BoxFit.cover,
          height: height,
          width: width,
          errorBuilder: (context, error, stackTrace) =>
              Image.asset(ImageAssets.musicImage),
        );
      } else {
        return Image.asset(ImageAssets.musicImage);
      }
    } catch (e) {
      return Image.asset(ImageAssets.musicImage);
    }
  }
}
