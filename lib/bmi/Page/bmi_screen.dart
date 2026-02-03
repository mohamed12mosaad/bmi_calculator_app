import 'package:bmi_calculator/bmi/Page/result_screen.dart';
import 'package:bmi_calculator/bmi/Widgets/counter_card.dart';
import 'package:bmi_calculator/bmi/Widgets/gender_card.dart';
import 'package:bmi_calculator/bmi/Widgets/height_selection.dart';
import 'package:bmi_calculator/counter/colors.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int height = 180;
  int weight = 80;
  int age = 21;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Center(
          child: Text(
            'BMI Screen',
            style: TextStyle(color: AppColors.whiteColor),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            _genderSelection(),
            HeightSelection(
              height: height,
              onChange: (value) {
                setState(() {
                  height = value.toInt();
                });
              },
            ),
            _weightAndAgeSelection(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                double result = weight / (height * height / 10000);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultScreen(result: result,)));
              },
              child: Text(
                'Calculate',
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _genderSelection() {
    return Expanded(
      child: Row(
        children: [
          GenderCard(
            icon: Icons.male,
            isSelected: isMale,
            text: 'Male',
            onTap: () {
              setState(() {
                isMale = true;
              });
            },
          ),
          SizedBox(width: 16),
          GenderCard(
            icon: Icons.female,
            isSelected: !isMale,
            text: 'Female',
            onTap: () {
              setState(() {
                isMale = false;
              });
            },
          ),
        ],
      ),
    );
  }

  Expanded _weightAndAgeSelection() {
    return Expanded(
      child: Row(
        children: [
          CounterCard(
            text: 'Weight',
            value: weight,
            onAdd: () {
              setState(() {
                weight++;
              });
            },
            onRemove: () {
              if (weight > 0) {
                setState(() {
                  weight--;
                });
              }
            },
          ),
          SizedBox(width: 16),
          CounterCard(
            text: 'Age',
            value: age,
            onAdd: () {
              setState(() {
                age++;
              });
            },
            onRemove: () {
              if (age > 0) {
                setState(() {
                  age--;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
