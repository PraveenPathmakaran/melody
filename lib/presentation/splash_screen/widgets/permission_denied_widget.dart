import 'package:flutter/material.dart';

import '../../core/resourse_manager/string_manage.dart';
import '../../core/resourse_manager/value_manager.dart';

class PermissionDeniedWidget extends StatelessWidget {
  final String text;
  final Function() voidCallBack;
  const PermissionDeniedWidget({
    super.key,
    required this.text,
    required this.voidCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text),
        const SizedBox(height: AppSize.s20),
        ElevatedButton(
          onPressed: voidCallBack,
          child: const Text(StringManger.requestPermisson),
        ),
      ],
    );
  }
}
