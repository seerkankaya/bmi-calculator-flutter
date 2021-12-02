import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/re_card_content.dart';
import '../components/re_container.dart';
import '../constants.dart';
import '../components/bottom_buton.dart';
import '../components/round_icon_button.dart';
import 'result_page.dart';
import 'package:bmi_calculator/calculator_brain.dart';


enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 15;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Vücut Kitle İndeks')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReContainerWidget(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  changeColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: ReCardContentWidget(
                    changeIcon: FontAwesomeIcons.male,
                    changeGender: 'Erkek',
                  ),
                )),
                Expanded(
                    child: ReContainerWidget(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  changeColor: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: ReCardContentWidget(
                    changeIcon: FontAwesomeIcons.female,
                    changeGender: 'Kadın',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReContainerWidget(
            changeColor: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT', style: klabelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kLabelTextStyle1,
                    ),
                    Text(
                      'cm',
                      style: klabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    //activeColor: Color(0xFF851F49),

                    onChanged: (double newValue){
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReContainerWidget(
                  changeColor: kActiveCardColor,
                      cardChild: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('WEİGHT',style: klabelTextStyle,),
                            Text(weight.toString(),style: kLabelTextStyle1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                   icon: FontAwesomeIcons.minus,
                                   onPressed: (){
                                     setState(() {
                                       weight != 1 ? weight-- : weight=weight.toInt();


                                     });
                                   },

                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(

                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                      weight = weight.toInt();
                                    });
                                  },


                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                )),
                Expanded(
                    child: ReContainerWidget(
                  changeColor: kActiveCardColor,
                      cardChild: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('AGE',style: klabelTextStyle,),
                            Text(age.toString(),style: kLabelTextStyle1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      age != 1 ? age-- : age=age.toInt();


                                    });
                                  },

                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(

                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                      age = age.toInt();
                                    });
                                  },


                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                )),
              ],
            ),
          ),
          ButtonBottom(buttonTitle: 'HESAPLA',onTap: (){
            // Adlandırılmış Navigator (Kısa Hali)  Navigator.pushNamed(context, 'resultPageScreen');
            CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
             Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage(

               bmiResult: calc.calculateBMI(),
               resultText: calc.getResult(),
               resultComment: calc.getComment(),


             ))); //Adlandırılmamış (Uzun Hali)
          },
          ),
        ],
      ),
    );
  }
}





