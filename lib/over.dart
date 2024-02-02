import 'package:flutter/material.dart';

class OverWeight extends StatelessWidget {
  final String name,status;
  final double bmiResult;
  const OverWeight({super.key,required this.name,required this.status,required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$status",
            style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 25),),
            Image(image: AssetImage("assets/images/ow1.png"),),
            Text("${name}, Your bmi is ${bmiResult}")
          ],
        ),
      ),
    );
  }
}