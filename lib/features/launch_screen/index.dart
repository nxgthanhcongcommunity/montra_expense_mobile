
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:montra_expense_mobile/core_visual/colors.dart';
import 'package:montra_expense_mobile/features/introduce_screen/index.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the home screen and replace the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroduceScreen()),
      );
    });

    return Container(
      decoration: BoxDecoration(
        color: AppColors.violet100,
      ),
      child: Center(
        child: Stack(
          children: [
            Text('Montra', style: TextStyle(
                color: AppColors.light100,
                fontSize: 56,
              fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.yellow100,
                ),
              ),
            )
          ]
        )
      )
    );
  }

}