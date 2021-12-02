import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/re_container.dart';
import 'package:bmi_calculator/components/bottom_buton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText, @required this.resultComment});
   final String bmiResult;
   final String resultText;
   final String resultComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VKİ Sonuçları'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Sonuc',style: kResultTitleTextStyle,)
          )
          ),
          Expanded(
            flex: 5,
              child: ReContainerWidget(
                changeColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText,style: kResultTextStyle,),
                    Text(bmiResult,style: kResultBMITextStyle,),
                    Text(
                      resultComment,
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,),

                  ],
                ),
              ),
          ),
           ButtonBottom(
               onTap: (){
                 Navigator.pop(context);
               },
               buttonTitle: 'YENİDEN HESAPLA'
           ),

        ],
      ),
    );
  }
}
