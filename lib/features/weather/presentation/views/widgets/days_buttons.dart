import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class DaysButtons extends StatelessWidget {
  final int currentPage;
  final Function(int) onPageChanged;

  const DaysButtons({
    Key? key,
    required this.currentPage,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFFBF8F8),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => onPageChanged(0),
                style: TextButton.styleFrom(
                  backgroundColor: currentPage == 0
                      ? AppColors.secondaryColor
                      : AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Day 1',
                  style: TextStyle(
                    fontFamily: 'Noto Serif Bengali',
                    fontSize: 11,
                    color: currentPage == 0
                        ? AppColors.textColor
                        : AppColors.secondaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: TextButton(
                  onPressed: () => onPageChanged(1),
                  style: TextButton.styleFrom(
                    backgroundColor: currentPage == 1
                        ? AppColors.secondaryColor
                        : AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Day 2',
                    style: TextStyle(
                      fontFamily: 'Noto Serif Bengali',
                      fontSize: 11,
                      color: currentPage == 1
                          ? AppColors.textColor
                          : AppColors.secondaryColor,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => onPageChanged(2),
                style: TextButton.styleFrom(
                  backgroundColor: currentPage == 2
                      ? AppColors.secondaryColor
                      : AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Day 3',
                  style: TextStyle(
                    fontFamily: 'Noto Serif Bengali',
                    fontSize: 11,
                    color: currentPage == 2
                        ? AppColors.textColor
                        : AppColors.secondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
