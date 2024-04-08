import 'package:flutter/material.dart';
import 'package:montra_expense_mobile/features/launch_screen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo 1',
      home: Scaffold(
        body: LaunchScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}