import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

class PlayIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  const PlayIconWidget({
    super.key,
    required this.icon,
    this.size = AppSize.s35,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
    );
  }
}
