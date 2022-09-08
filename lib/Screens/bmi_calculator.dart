// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bmi_practice/Screens/result_screen.dart';
import 'package:bmi_practice/Widgets/calculator_brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Theming_Widgets/theme_constant.dart';
import '../Theming_Widgets/theme_manager.dart';
import '../Widgets/bottom_button.dart';
import '../Widgets/box_container.dart';
import '../Widgets/gender_info.dart';
import '../Widgets/rounded_button.dart';
import '../constants/constant_data.dart';

ThemeManager _themeManager = ThemeManager();

enum Gender { male, female }

Gender? selectedGender;
Color activeColors(bool check) {
  Color active = check ? activeDarkContainerColor : activeLightContainerColor;
  return active;
}

Color inActiveColors(bool check) {
  Color inActive =
      check ? inActiveDarkContainerColor : inActiveLightContainerColor;
  return inActive;
}
// Color maleLightContainerColor = inActiveLightContainerColor;
// Color maleDarkContainerColor = inActiveDarkContainerColor;
//
// Color FemaleLightContainerColor = inActiveLightContainerColor;
// Color FemaleDarkContainerColor = inActiveDarkContainerColor;
//
//
// selectionColor(Gender gender){
//
//   if(gender == Gender.male){
//     if(maleLightContainerColor  == inActiveLightContainerColor ||maleDarkContainerColor  == inActiveDarkContainerColor){
//       maleLightContainerColor = activeLightContainerColor;
//       maleDarkContainerColor = activeDarkContainerColor;
//
//       FemaleLightContainerColor = inActiveLightContainerColor;
//       FemaleDarkContainerColor = inActiveDarkContainerColor;
//     }else{
//       maleLightContainerColor = inActiveLightContainerColor;
//       maleDarkContainerColor = inActiveDarkContainerColor;
//     }
//   }
//   if(gender == Gender.female){
//     if(FemaleLightContainerColor  == inActiveLightContainerColor || FemaleDarkContainerColor  == inActiveDarkContainerColor){
//       FemaleLightContainerColor = activeLightContainerColor;
//       FemaleDarkContainerColor = activeDarkContainerColor;
//
//       //For UnACtive Color
//       maleLightContainerColor = inActiveLightContainerColor;
//       maleDarkContainerColor = inActiveDarkContainerColor;
//     }else{
//       FemaleLightContainerColor = inActiveLightContainerColor;
//       FemaleDarkContainerColor =  inActiveDarkContainerColor;
//     }
//   }
// }

class MyTheme extends StatefulWidget {
  const MyTheme({Key? key}) : super(key: key);

  @override
  State<MyTheme> createState() => _MyThemeState();
}

class _MyThemeState extends State<MyTheme> {
  @override
  initState() {
    _themeManager.addListener(themeChange);
    super.initState();
  }

  dispose() {
    _themeManager.removeListener(themeChange);
    super.dispose();
    print("Disposef");
  }

  themeChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: MyThemeApp(),
    );
  }
}

class MyThemeApp extends StatefulWidget {
  const MyThemeApp({Key? key}) : super(key: key);

  @override
  State<MyThemeApp> createState() => _MyThemeAppState();
}

class _MyThemeAppState extends State<MyThemeApp> {
  int height = 180;
  int weight = 60;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        actions: [
          Switch(
              value: _themeManager.themeMode == ThemeMode.dark,
              onChanged: (value1) {
                _themeManager.toggleTheme(value1);
              })
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  ///TODO gender selection
                  child: BoxContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    myChild: GenderInfo(
                      genderIcon: FontAwesomeIcons.mars,
                      genderLabel: 'MALE',
                    ),
                    myColor: selectedGender == Gender.male
                        ? activeColors(toCheck)
                        : inActiveColors(toCheck),
                  ),
                ),
                Expanded(
                  child: BoxContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    myChild: GenderInfo(
                      genderIcon: FontAwesomeIcons.venus,
                      genderLabel: 'FEMALE',
                    ),
                    myColor: selectedGender == Gender.female
                        ? activeColors(toCheck)
                        : inActiveColors(toCheck),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BoxContainer(
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: _textTheme.subtitle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: _textTheme.headline4?.copyWith(
                                color: toCheck ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            })
                      ],
                    ),
                    myColor: toCheck
                        ? activeDarkContainerColor
                        : activeLightContainerColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BoxContainer(
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: _textTheme.subtitle1,
                        ),
                        Text(
                          weight.toString(),
                          style: _textTheme.headline4?.copyWith(
                            color: toCheck ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                  btnIcon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedButton(
                                  btnIcon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ]),
                      ],
                    ),
                    myColor: toCheck
                        ? activeDarkContainerColor
                        : activeLightContainerColor,
                  ),
                ),
                Expanded(
                  child: BoxContainer(
                    myColor: toCheck
                        ? activeDarkContainerColor
                        : activeLightContainerColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: _textTheme.subtitle1,
                        ),
                        Text(
                          age.toString(),
                          style: _textTheme.headline4?.copyWith(
                            color: toCheck ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                  btnIcon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedButton(
                                  btnIcon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(bottomText: 'Calculate', onPressed: (){
            CalculatorBrain calc = CalculatorBrain();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(bmiInterpretation: calc.getInterpretation(),bmiShortText: calc.getResult(),bmiResult: calc.calculateBMI())));
          },),
        ],
      ),
    );
  }
}
