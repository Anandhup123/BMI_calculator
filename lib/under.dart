import 'package:flutter/material.dart';

class UnderWeight extends StatelessWidget {
  final String name,status;
  final double bmiResult;
  const UnderWeight({super.key,required this.name,required this.status,required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$status",
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
            Image(image: AssetImage("assets/images/uw.png"),),
            Text("${name}, Your bmi is ${bmiResult}")
          ],
        ),
      ),
    );
  }
}