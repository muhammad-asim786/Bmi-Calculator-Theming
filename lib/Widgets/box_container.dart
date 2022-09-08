
import 'package:flutter/cupertino.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({required this.myColor, this.myChild, this.onPress});

  final Color myColor;
  final Widget? myChild;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(

        height: 200,
        width: 170,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: myChild,
      ),
    );
  }
}
