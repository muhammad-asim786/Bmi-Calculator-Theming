// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_practice/Widgets/bottom_button.dart';
import 'package:bmi_practice/Widgets/box_container.dart';
import 'package:bmi_practice/constants/constant_data.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({this.bmiResult,this.bmiInterpretation,this.bmiShortText});

  String? bmiResult;
  String? bmiInterpretation;
  String? bmiShortText;

  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "BMI Result",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BoxContainer(
              myColor: toCheck ? inActiveDarkContainerColor : activeLightContainerColor,
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiShortText.toString(),
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green[800],
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(bmiResult.toString(), style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                  Text(
                    bmiInterpretation.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(
            bottomText: 'Re-Calculate',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ))
        ],
      ),
    );
  }
}
