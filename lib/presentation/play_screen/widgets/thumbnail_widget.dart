import 'package:flutter/material.dart';
import 'package:melody/presentation/resources/color_manager.dart';

import '../../resources/value_manager.dart';

class ThumbnailWidget extends StatelessWidget {
  const ThumbnailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: AppSize.s10, // Adjust the elevation as needed
      shape: const CircleBorder(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManger.iconWhite, // Color of the inner circle
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Adjust the size of the outer circle as needed
            height: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
