import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/features/weather/presentation/cubit/weather_cubit.dart';

class LocationInfoSection extends StatelessWidget {
  const LocationInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    var info = BlocProvider.of<WeatherCubit>(context).weather!;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${info.location},',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            Text(
              info.region,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            )
          ],
        ),
        Text(
          info.country,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        Text(
          info.localtime,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryColor,
          ),
        )
      ],
    );
  }
}
