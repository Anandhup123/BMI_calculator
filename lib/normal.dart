import 'package:flutter/material.dart';

class NormalWeight extends StatelessWidget {
  final String name,status;
  final double bmiResult;
  const NormalWeight({super.key,required this.name,required this.status,required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$status",
            style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 25),),
            Image(image: AssetImage("assets/images/nw.png"),),
            Text("${name}, Your bmi is ${bmiResult}")
          ],
        ),
      ),
    );
  }
}