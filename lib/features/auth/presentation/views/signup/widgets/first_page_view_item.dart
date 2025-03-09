import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/helper_functions/build_error_bar.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/auth_text_field.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/features/auth/presentation/cubits/signup_cubits/signup_cubit.dart';
import 'package:weather_app/features/home/presentation/home.dart';
import 'package:weather_app/features/auth/presentation/views/signin_view.dart';

class FPageViewItem extends StatefulWidget {
  FPageViewItem(
      {super.key, required this.currentPage, required this.pageController});
  final currentPage;
  final PageController pageController;

  @override
  State<FPageViewItem> createState() => _FPageViewItemState();
}

class _FPageViewItemState extends State<FPageViewItem> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;
  TextEditingController fullNameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _nextPage() {
      if (widget.currentPage < 1) {
        // Change this to 1 to navigate to the second item
        widget.pageController.animateToPage(
          widget.currentPage + 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else if (widget.currentPage > 1) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return HomeView();
            },
          ),
        );
      }
    }

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          TAuthTextField(
            controller: fullNameControler,
            textInputType: TextInputType.name,
            lable: 'Full Name',
            icon: Icon(Iconsax.tag_right),
            // onSaved: (value) {
            //   userName = value!;
            // },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Full Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
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
                return 'Please enter your Email';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          TAuthTextField(
            controller: passwordControler,
            lable: 'Password',
            // onSaved: (value) {
            //   password = value!;
            // },
            inputFormatter: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(6)
            ],
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
          SizedBox(
            width: SizeConfig.width / 1.4,
            child: MyButton(
              label: 'Next',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignupCubit>().createUserWithEmailAndPassword(
                      emailControler.text,
                      passwordControler.text,
                      fullNameControler.text);
                }
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SignInView();
                    },
                  ),
                );
              },

              // Directly call _nextPage
            ),
          ),
          // signin button

          // creat account
        ],
      ),
    );
  }
}
