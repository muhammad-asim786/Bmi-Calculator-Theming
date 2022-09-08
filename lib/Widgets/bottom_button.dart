//BottomButton
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.bottomText, required this.onPressed});

  String? bottomText;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return  Container(
      height: 70,
      color: toCheck ? Color(0xFFEB1555) : Colors.green[800],
      child: RawMaterialButton(
        onPressed: onPressed,
        child: Text(bottomText!, style: TextStyle(fontSize: 22),),
      ),
    );
  }
}

