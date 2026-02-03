import 'package:bmi_calculator/counter/colors.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({super.key, required this.text, required this.value, required this.onAdd, required this.onRemove});

  final String text;
  final int value; 
  final Function() onAdd;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
            ),
            Text(
              value.toString(),
              style: TextStyle(color: AppColors.whiteColor, fontSize: 30, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: AppColors.greyyColor),
                  icon: const Icon(Icons.remove, color: Colors.white),
                  onPressed: onRemove,
                ),
                const SizedBox(width: 10),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: AppColors.greyyColor),
                  icon: const Icon(Icons.add, color: Colors.white),
                  onPressed: onAdd,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
