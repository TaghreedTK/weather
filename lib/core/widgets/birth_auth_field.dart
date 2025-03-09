import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BAuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool? expands;
  final bool? enabled;
  final Icon? icon;
  final Icon? icon2;
  final String lable;
  const BAuthTextField(
      {super.key,
      required this.controller,
      this.textInputType = TextInputType.text,
      this.validator,
      this.expands,
      this.enabled,
      this.icon,
      required this.lable,
      this.icon2,
      this.inputFormatter});

  @override
  Widget build(BuildContext context) {
    double paddingValue = SizeConfig.width * 0.05;

    return Padding(
      padding: EdgeInsets.only(right: paddingValue, left: paddingValue),
      child: TextFormField(
        controller: controller,
        inputFormatters: inputFormatter,
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          label: Center(child: Text(lable)),
          filled: true,
          errorMaxLines: 3,
          prefixIcon: icon,
          suffixIcon: icon2,
          prefixIconColor: AppColors.lightPrimaryColor,
          suffixIconColor: AppColors.lightPrimaryColor,
          alignLabelWithHint: true,
          labelStyle: const TextStyle().copyWith(
              fontSize: 14,
              color: AppColors.lightPrimaryColor,
              fontWeight: FontWeight.bold),
          hintStyle: const TextStyle().copyWith(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
          floatingLabelStyle:
              const TextStyle().copyWith(color: Colors.black.withOpacity(0.0)),
          border: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                const BorderSide(width: 1, color: AppColors.secondaryColor),
          ),
          focusedBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 1, color: Colors.black12),
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
      ),
    );
  }
}
