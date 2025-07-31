import 'package:flutter/material.dart';
import 'package:bmi/components/ReuseCard.dart';
import 'package:bmi/const.dart';
import '../components/bottombutton.dart';

class resultpage extends StatelessWidget {
  const resultpage({required this.result, required this.bmi, required this.sugesstion});
  final String result;
  final String bmi;
  final String sugesstion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATER', style: kapbar),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 50.0),
          Text('Your Result', textAlign: TextAlign.center, style: klargebtn),
          Expanded(
            flex: 4,
            child: ReuseCard(
              passColor: kactivecardcolor,
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(result.toUpperCase(), style: kresult),
                  Text(bmi, style: kbmi),
                  Text(sugesstion, textAlign: TextAlign.center,style: ksugestion),
                ],
              ),
            ),
          ),
          bottombtn(
            onPress: () {
              Navigator.pop(context);
            },
            buttontitel: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
