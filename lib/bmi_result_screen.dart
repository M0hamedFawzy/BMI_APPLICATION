import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
final bool isMale;
final int age;
final int bmi;

BmiResultScreen({
  required this.isMale,
  required this.age,
  required this.bmi
});


String state(){
  String state = '';
  if(bmi < 18){
    return 'Thinness';
  }
  if(bmi >= 18 && bmi <= 25){
    return 'Normal';
  }
  if(bmi > 25 && bmi <= 30){
    return 'Overweight';
  }
  if(bmi > 30){
    return 'Obese';
  }
  else{
    return 'Undefined';
  }
}

Color stateColor(){
  if(bmi < 18){
    return Colors.orange;
  }
  if(bmi >= 18 && bmi <= 25){
    return Colors.lightBlue;
  }
  if(bmi > 25 && bmi <= 30){
    return Colors.deepOrangeAccent;
  }
  if(bmi > 30){
    return Colors.red;
  }
  else{
    return Colors.black12;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          child: Text(
            'BMI Result',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF161616),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${isMale? 'Male' : 'Female'}',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Age : $age ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'BMI : $bmi ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                '${state()}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 35.0,
                  color: stateColor(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
