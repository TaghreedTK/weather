import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:weather_app/features/auth/presentation/views/signin_view.dart';
import 'package:weather_app/features/auth/presentation/views/signup/signup_view.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/signup_view_body.dart';
import 'package:weather_app/features/auth/presentation/views/widgets/on_board_image.dart';
import 'package:flutter/material.dart';

class OnBoardBody extends StatelessWidget {
  const OnBoardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnBoardImage(),
        SizedBox(
          height: SizeConfig.height / 8,
        ),
        SizedBox(
          width: SizeConfig.width / 1.4,
          child: MyButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SignInView();
                  },
                ),
              );
            },
            label: 'Sign In',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: SizeConfig.width / 1.4,
          child: MyButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SignupView();
                  },
                ),
              );
            },
            label: 'Sign Up',
          ),
        ),
      ],
    );
  }
}
