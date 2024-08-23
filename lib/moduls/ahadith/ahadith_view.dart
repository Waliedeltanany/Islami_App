import 'package:flutter/material.dart';

class AhadithView extends StatelessWidget {
  const AhadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Ahadith View",
        style: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
