import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        radius: 80,
        backgroundImage: NetworkImage('https:${image}', scale: 0.1),
      ),
    );
  }
}
