//import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Color(0xFF0A0E21), secondary: Colors.blue),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Color(0xFFFFFFFF)), // Default renk Body text2 ise vurgulamak için
        ),
      ),

      // ThemeData.dark().copyWith(   // Burada dark hazır veriyi çektiği için aynı renk olmuyor appbar ve body
      //   primaryColor: Color(0xFF0A0E21),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ),

      home: InputPage(),
      // routes: {
      //   'homePageScreen' : (context) => InputPage(),
      //   'resultPageScreen' : (context) => ResultsPage(),
      //
      // },
    );
  }
}
