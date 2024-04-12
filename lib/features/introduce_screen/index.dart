
import 'package:flutter/cupertino.dart';
import 'package:montra_expense_mobile/core_visual/colors.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.violet100,
        ),
        child: Center(
            child: Text('Introduce')
        )
    );
  }

}