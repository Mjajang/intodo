import 'package:flutter/material.dart';
import 'package:intodo/src/values/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "InTodo",
          style: AppTextStyles.blackTextStyle.copyWith(
            fontWeight: AppFontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
