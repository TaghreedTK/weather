import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class IconAvatar extends StatelessWidget {
  const IconAvatar({super.key, required this.icon, required this.color});
  final IconData? icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      backgroundColor: AppColors.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36,
          child: Icon(
            size: 30,
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
