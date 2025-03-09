import 'package:weather_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;
  final String label;
  const MyButton(
      {super.key,
      required this.onPressed,
      this.isLoading = false,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: AppColors.secondaryColor,
            disabledForegroundColor: Colors.grey,
            disabledBackgroundColor: Colors.grey,
            side: const BorderSide(
              color: AppColors.secondaryColor,
            ),
            padding: const EdgeInsets.symmetric(vertical: 18),
            textStyle: const TextStyle(
                fontSize: 18,
                color: AppColors.lightPrimaryColor,
                fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        onPressed: onPressed,
        child: Text(label));
  }
}
