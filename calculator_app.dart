import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter first number',
            ),
            controller: firstNumberController,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter second number',
            ),
            controller: secondNumberController,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text('+'),
                onPressed: () {
                  setState(() {
                    int firstNumber = int.parse(firstNumberController.text);
                    int secondNumber = int.parse(secondNumberController.text);
                    result = firstNumber + secondNumber;
                  });
                },
              ),
              ElevatedButton(
                child: Text('-'),
                onPressed: () {
                  setState(() {
                    int firstNumber = int.parse(firstNumberController.text);
                    int secondNumber = int.parse(secondNumberController.text);
                    result = firstNumber - secondNumber;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Result: $result',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
