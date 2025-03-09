import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/auth_text_field.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';

class SignInForm extends StatefulWidget {
  SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late String email, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          TAuthTextField(
            controller: emailControler,
            // onSaved: (value) {
            //   email = value!;
            // },
            textInputType: TextInputType.emailAddress,
            lable: 'Email',
            icon: Icon(Iconsax.tag_right),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          TAuthTextField(
            controller: passwordControler,
            // onSaved: (value) {
            //   password = value!;
            // },
            lable: 'Password',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
            icon: Icon(Iconsax.password_check),
            icon2: Icon(Iconsax.eye),
          ),
          const SizedBox(
            height: 32,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Info',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // signin button
          SizedBox(
            width: SizeConfig.width / 1.4,
            child: MyButton(
              label: 'Sign In',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  context.read<SigninCubit>().signin(email, password);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),

          // creat account
          SizedBox(
            width: double.infinity,
            child: TextButton(
                onPressed: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'DON\'T HAVE AN ACOUNT?',
                    style: TextStyle(
                        color: AppColors.lightPrimaryColor, fontSize: 10),
                  ),
                )),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
