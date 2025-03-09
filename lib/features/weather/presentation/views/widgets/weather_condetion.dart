import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_images.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/icon_avatar.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/image_avatar.dart';

class WeatherCondetion extends StatelessWidget {
  const WeatherCondetion({super.key, required this.forecast});
  final Forecast forecast;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconAvatar(icon: Icons.thermostat, color: AppColors.textColor),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '${forecast.avgTempC} ℃',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  IconAvatar(icon: Icons.thermostat, color: Colors.red),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '${forecast.avgTempF} ℉',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                IconAvatar(
                    icon: Icons.water_drop, color: AppColors.secondaryColor),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${forecast.avgHum} %',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
              ],
            )
          ],
        ),
        ImageAvatar(
          image: forecast.icon,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            '"${forecast.condetion}"',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.lightSecondaryColor,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              forecast.preduction == 1 ? "Let's hangout" : 'Rest day',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            Image.asset(
              forecast.preduction == 1
                  ? Assets.good
                  : Assets.bad, // Replace with your GIF file name
              width: 50,
              height: 50,
            ),
          ],
        ),
        Text(
          forecast.date,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryColor,
          ),
        )
      ],
    );
  }
}
