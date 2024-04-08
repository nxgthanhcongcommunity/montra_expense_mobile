
import 'package:montra_expense_mobile/core_visual/colors.dart';

class AppTheme {

  final AppColors colors;

  AppTheme({required this.colors});

  factory AppTheme.defaultTheme(){
    return AppTheme(colors: AppColors());
  }

}