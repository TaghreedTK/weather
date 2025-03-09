import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:weather_app/features/home/presentation/widgets/home_search.dart';
import 'package:weather_app/features/home/presentation/widgets/home_center.dart';
import 'package:weather_app/features/home/presentation/widgets/home_header.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather_app/features/weather/presentation/views/weather_view.dart';

class HomeView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.height / 5, child: HomeHeader()),
            HomeCenter(),
            SizedBox(
              height: SizeConfig.height * 0.02,
            ),
            Center(
              child: SizedBox(
                  width: SizeConfig.width / 1.2,
                  child: HomeSearch(
                    onPressed: () {},
                    controller: _controller,
                  )),
            ),
            SizedBox(
              height: SizeConfig.height * 0.02,
            ),
            Center(
              child: SizedBox(
                width: SizeConfig.width / 1.5,
                child: MyButton(
                  label: 'Search',
                  onPressed: () {
                    final location = _controller.text;
                    if (location.isNotEmpty) {
                      context.read<WeatherCubit>().fetchWeather(location);
                    }
                  },
                ),
              ),
            ),
            BlocBuilder<WeatherCubit, WeatherState>(
              builder: (context, state) {
                if (state is WeatherLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is WeatherLoaded) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return WeatherView();
                        },
                      ),
                    );
                  });
                  return Container(); // Return an empty container while navigating
                } else if (state is WeatherError) {
                  return Center(child: Text(state.message));
                } else {
                  return Center(child: Text(''));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
