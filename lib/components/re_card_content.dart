import 'package:flutter/material.dart';
import '../constants.dart';



class ReCardContentWidget extends StatelessWidget {

  final changeIcon;
  final changeGender;
  ReCardContentWidget({@required this.changeIcon, @required this.changeGender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          changeIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('$changeGender',style: klabelTextStyle)
      ],
    );
  }
}