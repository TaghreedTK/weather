import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TAuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool? expands;
  final bool? enabled;
  final Icon? icon;
  final Icon? icon2;
  final String lable;
  const TAuthTextField(
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
        keyboardType: textInputType,
        inputFormatters: inputFormatter,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          labelText: lable,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          errorMaxLines: 3,
          prefixIcon: icon,
          suffixIcon: icon2,
          prefixIconColor: AppColors.textColor,
          suffixIconColor: AppColors.textColor,
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
      ),
    );
  }
}
