import 'package:flutter/material.dart';
import 'package:bmi/const.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import '../components/ReuseCard.dart';
import '../components/gendercard.dart';
import '../components/custombutton.dart';
import '../components/bottombutton.dart';
import '../screens/result-page.dart';
import '../Backend/brain.dart';

enum Gender { male, female }

class iput_page extends StatefulWidget {
  const iput_page({super.key});

  @override
  State<iput_page> createState() => _iput_pageState();
}

class _iput_pageState extends State<iput_page> {
  Gender? SelectGender;
  int height = 180;
  int weight = 50;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCUTER', style: kapbar),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseCard(
                      onPress: () {
                        setState(() {
                          SelectGender = Gender.male;
                        });
                      },
                      passColor:
                          SelectGender == Gender.male
                              ? kactivecardcolor
                              : kanactivecardcolor,
                      Cardchild: GenderCard(gentitel: 'MALE', icon: Icons.male),
                    ),
                  ),
                  Expanded(
                    child: ReuseCard(
                      onPress: () {
                        setState(() {
                          SelectGender = Gender.female;
                        });
                      },
                      passColor:
                          SelectGender == Gender.female
                              ? kactivecardcolor
                              : kanactivecardcolor,
                      Cardchild: GenderCard(
                        gentitel: 'FEMALE',
                        icon: Icons.female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseCard(
                passColor: kactivecardcolor,
                Cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: klabletextstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: klargebtn),
                        Text('cm', style: klabletextstyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        //passing the current context of slider
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayColor: Color(0x29eb1555),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseCard(
                      passColor: kactivecardcolor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: klabletextstyle),
                          Text('$weight', style: klargebtn),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              myownbutton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(width: 10.0),
                              myownbutton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseCard(
                      passColor: kactivecardcolor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: klabletextstyle),
                          Text('$age', style: klargebtn),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              myownbutton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(width: 10.0),
                              myownbutton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottombtn(
              onPress: () {
                bmicalculater calcu = bmicalculater(
                  height: height,
                  weight: weight,
                );

                String bmiValue = calcu.calculateBMI();
                String result = calcu.getResult();
                String suggestion = calcu.giveSuggestion();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return resultpage(
                        result: result,
                        bmi: bmiValue,
                        sugesstion: suggestion,
                      );
                    },
                  ),
                );
              },

              buttontitel: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
