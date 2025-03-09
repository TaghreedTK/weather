import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/helper_functions/build_error_bar.dart';
import 'package:weather_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:weather_app/features/auth/presentation/views/signin/widgets/custom_progress_hud.dart';
import 'package:weather_app/features/auth/presentation/views/signin/widgets/signin_form.dart';
import 'package:weather_app/features/home/presentation/home.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomeView();
              },
            ),
          );
        }

        if (state is SigninFailure) {
          showBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
          child: SignInForm(),
        );
      },
    );
  }
}
