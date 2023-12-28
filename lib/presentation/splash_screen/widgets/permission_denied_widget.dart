import 'package:flutter/material.dart';

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
        Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: voidCallBack,
          child: const Text('Request Permisson'),
        ),
      ],
    );
  }
}
