import 'package:dots_indicator/dots_indicator.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/size_config.dart';
import 'package:weather_app/core/widgets/my_button.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/first_page_view_item.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/second_page_view_item.dart';
import 'package:weather_app/features/auth/presentation/views/signup/widgets/signip_page_view.dart';
import 'package:weather_app/features/auth/presentation/views/widgets/auth_header.dart';

import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/home.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final PageController _pageController = PageController();
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: SizeConfig.height / 6,
          ),
          AuthHeader(header: "SIGN Up"),
          SizedBox(
            height: SizeConfig.height / 9,
          ),
          Container(
            height:
                SizeConfig.height / 2, // Set a specific height for the PageView
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                FPageViewItem(
                  pageController: _pageController,
                  currentPage: _currentPage,
                ),
                //  SPageViewItem()
              ],
            ),
          ),
          DotsIndicator(
            dotsCount: 2, // Change this to 2 since you have only two items
            decorator: DotsDecorator(
                activeColor: AppColors.secondaryColor,
                color: AppColors.lightPrimaryColor.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 29,
          ),
          // signin button

          SizedBox(
            height: SizeConfig.height / 8,
          ),
        ]),
      ),
    );
  }
}
