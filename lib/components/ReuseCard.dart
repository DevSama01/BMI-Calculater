import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  const ReuseCard({required this.passColor, this.onPress, this.Cardchild});

  final Color passColor;
  final VoidCallback? onPress;
  final Widget? Cardchild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Cardchild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: passColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
