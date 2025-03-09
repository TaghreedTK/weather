import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_images.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class OnBoardImage extends StatelessWidget {
  const OnBoardImage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Center(
      child: Container(
        height: SizeConfig.height / 1.9,
        width: SizeConfig.width,
        decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200)),
        ),
        child: Center(
          child: Image.asset(height: SizeConfig.height / 2.4, Assets.login2),
        ),
      ),
    );
  }
}
