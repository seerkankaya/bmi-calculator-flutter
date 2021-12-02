import 'package:flutter/material.dart';

class ReContainerWidget extends StatelessWidget {

  final Color changeColor;
  final Widget cardChild;
  final Function onPress;
  ReContainerWidget({@required this.changeColor,this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: changeColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}