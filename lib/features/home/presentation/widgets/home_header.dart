import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor),
          ),
          Text(
            "Taghreed Khaled",
            style: TextStyle(fontSize: 26, color: AppColors.textColor),
          )
        ],
      ),
    );
  }
}
