import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/services/get_it_service.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:weather_app/features/auth/domain/repos/auth_repo.dart';
import 'package:weather_app/features/auth/presentation/cubits/signup_cubits/signup_cubit.dart';
import 'package:weather_app/features/auth/presentation/views/signin/widgets/signin_form.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/first_page_view_item.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/signup_view_body.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/signup_view_body_bloc_consumer.dart';

import 'package:weather_app/features/auth/presentation/views/widgets/auth_header.dart';

import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
