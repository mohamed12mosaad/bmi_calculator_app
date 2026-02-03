import 'package:bmi_calculator/counter/colors.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.isSelected,
  });

  final String text;
  final IconData icon;
  final isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected? AppColors.primaryColor: AppColors.cardColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 80, color: AppColors.whiteColor),
              Text(
                text,
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
