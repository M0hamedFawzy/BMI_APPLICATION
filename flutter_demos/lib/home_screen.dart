import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/searchScreen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'GPA Calculator',
        ),
        actions: [
          IconButton(
              onPressed: () {
                 print('hello');
              },
              icon: Icon(
                Icons.search,
                weight: 500,
              )),
        ],
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text(
                '  Write your code here. . . ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Text(
                '  Write your code here. . . ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              child: Text(
                '  Write your code here. . . ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
