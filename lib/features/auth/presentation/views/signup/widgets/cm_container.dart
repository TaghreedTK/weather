import 'package:weather_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CmContainer extends StatelessWidget {
  const CmContainer({super.key, required this.unit});
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              unit,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.lightPrimaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
