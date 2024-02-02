import 'package:flutter/material.dart';
import 'package:melody/presentation/core/resourse_manager/value_manager.dart';

class PlayIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  const PlayIconWidget({
    super.key,
    required this.icon,
    this.size = AppSize.s35,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
