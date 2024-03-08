import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'resourse_manager/assets_manager.dart';
import 'resourse_manager/string_manage.dart';

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
          errorBuilder: (context, error, stackTrace) => Image.asset(
            ImageAssets.musicImage,
            height: height,
            width: width,
          ),
        );
      } else {
        return Image.asset(
          ImageAssets.musicImage,
          height: height,
          width: width,
        );
      }
    } catch (e) {
      return Image.asset(
        ImageAssets.musicImage,
        height: height,
        width: width,
      );
    }
  }
}

Future<dynamic> conFirmDialogue(
  BuildContext context,
  String title,
  void Function()? onPressed,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return SizedBox(
        height: 50,
        child: AlertDialog(
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.spaceBetween,
          content: Text(
            title,
            textAlign: TextAlign.center,
          ),
          title: const Text(
            StringManger.areYouSure,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(StringManger.cancel)),
            TextButton(
              onPressed: onPressed,
              child: const Text(StringManger.yes),
            ),
          ],
        ),
      );
    },
  );
}
