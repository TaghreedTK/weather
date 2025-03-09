import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/features/auth/presentation/views/signin/widgets/signin_form.dart';

import 'package:weather_app/features/auth/presentation/views/widgets/auth_header.dart';

import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  SignInView({super.key});

  @override
  State<SignInView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 60,
        ),
        AuthHeader(
          header: "SIGN IN",
        ),
        SizedBox(
          height: SizeConfig.height / 9,
        ),
        SignInForm(),

        // footer
      ])),
    );
  }
}
