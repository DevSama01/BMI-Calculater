import 'package:flutter/material.dart';
import 'package:bmi/const.dart';
class GenderCard extends StatelessWidget {
  const GenderCard({required this.gentitel, required this.icon});

  final String gentitel;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 100, color: Colors.white),
        Text(gentitel, style: klabletextstyle),
      ],
    );
  }
}
