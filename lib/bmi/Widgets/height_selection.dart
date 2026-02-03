import 'package:bmi_calculator/counter/colors.dart';
import 'package:flutter/material.dart';

class HeightSelection extends StatelessWidget {
  const HeightSelection({super.key, required this.onChange, required this.height,});
  final Function(double) onChange;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.whiteColor
                ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18,
                    ),
                    ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 80,
              max: 220,
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.greyyColor,
              onChanged: onChange,
              ),
          ],
        ),
      ),
    );
  }
}
