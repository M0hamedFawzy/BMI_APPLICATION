import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';
import 'bmi_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: bmiScreeen(),
     debugShowCheckedModeBanner: false,
   );
  }

}
