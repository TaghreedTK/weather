import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/features/home/presentation/widgets/home_header.dart';
import 'package:weather_app/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/days_buttons.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/location_info_section.dart';

import 'package:weather_app/features/weather/presentation/views/widgets/weather_condetion.dart';

class WeatherViewBody extends StatefulWidget {
  const WeatherViewBody({super.key});

  @override
  State<WeatherViewBody> createState() => _WeatherViewBodyState();
}

class _WeatherViewBodyState extends State<WeatherViewBody> {
  final PageController _pageController = PageController();
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var info = BlocProvider.of<WeatherCubit>(context).weather!;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.height * 0.01,
          ),
          SizedBox(height: SizeConfig.height / 5, child: HomeHeader()),
          DaysButtons(
            currentPage: _currentPage,
            onPageChanged: (index) {
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          SizedBox(
            height: SizeConfig.height * 0.04,
          ),
          SizedBox(
              height: SizeConfig.height / 10,
              child: Expanded(child: LocationInfoSection())),
          SizedBox(
            height: SizeConfig.height * 0.0,
          ),
          SizedBox(
            height: SizeConfig.height / 2,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: info.forecast.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final forecast = info.forecast[index];
                return Container(
                  width: SizeConfig.width,
                  padding: EdgeInsets.only(top: 16.0),
                  child: WeatherCondetion(
                    forecast: forecast,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
