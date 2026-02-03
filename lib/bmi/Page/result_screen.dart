import 'package:bmi_calculator/counter/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.result});

  final double result;

  Widget getClassification() {
  if (result < 18.5) {
    return Text('UnderWeight',style: TextStyle(fontSize: 24, color: Colors.amberAccent),);
  } else if (result <= 24.9) {
    return Text('HealthyWeight', style: TextStyle(fontSize: 24, color: Colors.greenAccent),);
  } else if (result <= 29.9) {
    return Text('OverWeight', style: TextStyle(fontSize: 24, color: Colors.orangeAccent),);
  } else {
    return Text('Obese', style: TextStyle(fontSize: 24, color: Colors.redAccent),);
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body:  Center(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor
              ),
              ),
              const SizedBox(height: 20,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    getClassification(),
                    Text(
                      result.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'You have a normal body weight. Good job!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: AppColors.whiteColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Recalculate',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
                ),),
          ],
        ),
      )
          ),
    );
  }

}