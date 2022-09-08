
import 'package:flutter/material.dart';

class GenderInfo extends StatelessWidget {
   GenderInfo({this.genderIcon, this.genderLabel});

  final IconData? genderIcon;
  final String? genderLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(genderLabel!),
      ],
    );
  }
}
