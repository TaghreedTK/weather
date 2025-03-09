import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_images.dart';
import 'package:weather_app/core/utils/size_config.dart';

class HomeCenter extends StatelessWidget {
  const HomeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: SizeConfig.width / 1.2,
          height: SizeConfig.height / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assets.home)),
          ),
        ),
      ),
    );
  }
}
