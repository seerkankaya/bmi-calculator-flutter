import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      child: Icon(icon,color: Colors.white,),
      onPressed: onPressed,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      // shape oval,rectangular ve circular olabilir. shape : CircularBorder();
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: Color(0xFF4C4F5E),



    );
  }
}