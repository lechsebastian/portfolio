import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'SL',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: CustomColor.yellowSecondary),
    );
  }
}
