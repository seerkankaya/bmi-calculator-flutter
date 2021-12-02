import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;



  double _bmi;

  String calculateBMI(){

     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResult()
  {
    if(_bmi >= 25){ return 'Yüksek';}
    else if(_bmi >18.5){ return 'Normal';}
    else{ return 'Düşük';}
  }

  String getComment()
  {
    if(_bmi >= 25){ return 'Vücut kitle indeksin yüksek.Biraz zayıflamaya çalış :)';}
    else if(_bmi >18.5){ return 'Vücut kitle indeksin normal. Böyle Kal!';}
    else{ return 'Vücut kitle indeksin düşük. Biraz kilo al :)';}
  }



}