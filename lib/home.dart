import 'package:bmi/normal.dart';
import 'package:bmi/obesity.dart';
import 'package:bmi/over.dart';
import 'package:bmi/under.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double bmi=0;
  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  cursorColor: Colors.pink,
                  controller: _name,
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.pink,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.pink.withOpacity(0.1),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  cursorColor: Colors.pink,
                  controller: _height,
                  decoration: InputDecoration(
                      labelText: "Height",
                      labelStyle: TextStyle(
                        color: Colors.pink,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.pink.withOpacity(0.1),
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  cursorColor: Colors.pink,
                  controller: _weight,
                  decoration: InputDecoration(
                      labelText: "Weight",
                      labelStyle: TextStyle(
                        color: Colors.pink,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.pink.withOpacity(0.1),
                      filled: true),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  fixedSize: Size(150, 50),
                  // padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    double height=double.parse(_height.text);
                    double weight=double.parse(_weight.text);
                    if(height>100){
                      height=height/100;
                      bmi=weight/(height*height);
                    }
                    else{
                      bmi=weight/(height*height);
                    }
                    
                  });
                  if(bmi<18.5){
                    result="Under Weight";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UnderWeight(name: _name.text, status: result, bmiResult: bmi)));
                  }
                  else if(bmi>=18.5 && bmi<=24.9){
                    result="Normal Weight";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NormalWeight(name: _name.text, status: result, bmiResult: bmi)));
                  }
                  else if(bmi>=25 && bmi<29.9){
                    result="Over Weight";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OverWeight(name: _name.text, status: result, bmiResult: bmi)));
                  }
                  else{
                    result="Obesity";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Obesity(name: _name.text, status: result, bmiResult: bmi)));
                  }
                },
                child: Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Text("BMI is ${bmi}"),
              // Text("$result"),
            ],
          ),
        ),
      ),
    );
  }
}
