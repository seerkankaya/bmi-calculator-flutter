import 'package:flutter/material.dart';
import '../constants.dart';
class ButtonBottom extends StatelessWidget {

  final Function onTap;
  final String buttonTitle;
  ButtonBottom({@required this.onTap,@required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        child: Center(child: Text(buttonTitle,style: kButtonTextStyle,)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}