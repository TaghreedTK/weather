import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch(
      {super.key, required this.controller, required this.onPressed});
  final TextEditingController controller;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        labelText: 'Destenation',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        errorMaxLines: 3,
        prefixIconColor: AppColors.textColor,
        suffixIconColor: AppColors.textColor,
        suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: onPressed),
        alignLabelWithHint: true,
        labelStyle: const TextStyle().copyWith(
            fontSize: 14,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold),
        hintStyle: const TextStyle().copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
        floatingLabelStyle:
            const TextStyle().copyWith(color: Colors.black.withOpacity(0.0)),
        disabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide:
              const BorderSide(width: 1, color: AppColors.lightPrimaryColor),
        ),
        border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide:
              const BorderSide(width: 1, color: AppColors.lightPrimaryColor),
        ),
        enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide:
              const BorderSide(width: 1, color: AppColors.secondaryColor),
        ),
        focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide:
              const BorderSide(width: 1, color: AppColors.lightPrimaryColor),
        ),
        errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 1, color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 2, color: Colors.orange),
        ),
      ),
    );
  }
}
