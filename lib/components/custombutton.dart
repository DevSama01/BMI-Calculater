import 'package:flutter/material.dart';
class myownbutton extends StatelessWidget {
  myownbutton({required this.onPress, required this.icon});

  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 50, width: 50),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(icon, size: 25, color: Colors.white),
    );
  }
}