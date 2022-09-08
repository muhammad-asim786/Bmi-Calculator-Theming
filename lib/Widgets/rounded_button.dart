
//Rounded buttons in last two containers for weight and age
import 'package:flutter/material.dart';

import '../constants/constant_data.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.btnIcon, required this.onPressed});
  IconData btnIcon;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return RawMaterialButton(
      fillColor: isDark ? inActiveDarkContainerColor : Colors.green[800],
      onPressed: onPressed,
      child: Icon(btnIcon, color: Colors.white70,),
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
    );
  }
}
