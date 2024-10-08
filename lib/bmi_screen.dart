import 'dart:math';
import 'bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmiScreeen extends StatefulWidget {
  @override
  State<bmiScreeen> createState() => _bmiScreeenState();
}

class _bmiScreeenState extends State<bmiScreeen> {
  bool isMale = true;
  double height = 180.0;
  int age = 20;
  int weight = 60;
  String state = '';
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              alignment: Alignment.center,
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          body: Container(
            color: Color(0xFF161616),
            child: Column(
              children:
              [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children:
                      [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: isMale? Colors.orange : Color(0xFF2B2B2B),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  Icon(
                                    Icons.male,
                                    size: 80.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      height: 20.0
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],

                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: isMale? Color(0xFF2B2B2B) : Colors.orange,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  Icon(
                                    Icons.female,
                                    size: 80.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                      height: 20.0
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF2B2B2B),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'Height',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5.0,),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9D9D9D),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            thumbColor: Colors.amber,
                              activeColor: Colors.orangeAccent,
                              value: height,
                              max: 400,
                              min: 30,
                              onChanged: (value){
                              setState(() {
                                height = value;
                              });
                              },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFF2B2B2B),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: 'a+',
                                      backgroundColor: Colors.orange,
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      mini: true,

                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                    SizedBox(width: 20.0,),
                                    FloatingActionButton(
                                      heroTag: 'a-',
                                      backgroundColor: Colors.orange,
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      mini: true,

                                      child: Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFF2B2B2B),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      heroTag: 'w-',
                                      backgroundColor: Colors.orange,
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      mini: true,

                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                    SizedBox(width: 20.0,),
                                    FloatingActionButton(
                                      heroTag: 'w+',
                                      backgroundColor: Colors.orange,
                                      onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      mini: true,

                                      child: Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60.0,
                  color: Colors.orange,
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      double value = weight / pow(height / 100.0, 2);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BmiResultScreen(isMale: isMale, age: age, bmi: value.round())));
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}
