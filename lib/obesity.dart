import 'package:flutter/material.dart';

class Obesity extends StatelessWidget {
  final String name,status;
  final double bmiResult;
  const Obesity({super.key,required this.name,required this.status,required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$status",
            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
            Image(image: AssetImage("assets/images/ob.png"),),
            Text("${name}, Your bmi is ${bmiResult}")
          ],
        ),
      ),
    );
  }
}