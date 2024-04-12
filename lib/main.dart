import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:montra_expense_mobile/features/launch_screen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Flutter Demo 1',
      home: Scaffold(
        body: LaunchScreen(),
      ),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
