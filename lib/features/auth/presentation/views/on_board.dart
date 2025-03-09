import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';

import 'package:weather_app/features/auth/presentation/views/widgets/on_board_body.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: OnBoardBody(),
      ),
    );
  }
}
