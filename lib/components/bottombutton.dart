import 'package:flutter/material.dart';
import 'package:bmi/const.dart';
class bottombtn extends StatelessWidget {
  const bottombtn({required this.onPress, required this.buttontitel});

  final String buttontitel;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        height: 80.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kbottomcardcolor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            buttontitel,
            textAlign: TextAlign.center,
            style: kapbar,
          ),
        ),
      ),
    );
  }
}