import 'package:flutter/material.dart';
import './widgets/calculator_button.dart';

class CalculatorMaterialApp extends StatefulWidget {
  const CalculatorMaterialApp({super.key});

  @override
  State<CalculatorMaterialApp> createState() => _CalculatorMaterialAppState();
}

class _CalculatorMaterialAppState extends State<CalculatorMaterialApp> {
  final text = '';
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    // if (btnVal == 'C') {
    //   textToDisplay = '';
    //   firstNum = 0;
    //   secondNum = 0;
    //   res = '';
    // } else if (btnVal == 'AC') {
    //   textToDisplay = '';
    //   firstNum = 0;
    //   secondNum = 0;
    //   history = '';
    //   res = '';
    // } else if (btnVal == '+' ||
    //     btnVal == '-' ||
    //     btnVal == '+' ||
    //     btnVal == '*') {
    //   firstNum = int.parse(textToDisplay);
    //   secondNum = int.parse(textToDisplay);
    //   operation = btnVal;
    //   res = '';
    // } else if (btnVal == '=') {
    //   secondNum = int.parse(textToDisplay);
    //   if (operation == '+') {
    //     res = (firstNum + secondNum).toString();
    //     history =
    //         firstNum.toString() + operation.toString() + secondNum.toString();
    //   }
    //   if (operation == '-') {
    //     res = (firstNum - secondNum).toString();
    //     history =
    //         firstNum.toString() + operation.toString() + secondNum.toString();
    //   }
    //   if (operation == '*') {
    //     res = (firstNum * secondNum).toString();
    //     history =
    //         firstNum.toString() + operation.toString() + secondNum.toString();
    //   }
    //   if (operation == '/') {
    //     res = (firstNum / secondNum).toString();
    //     history =
    //         firstNum.toString() + operation.toString() + secondNum.toString();
    //   }
    // } else {
    //   res = int.parse(textToDisplay + btnVal).toString();
    // }

    setState(() {
      textToDisplay = '897';
      // textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CALCI',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 55, 68, 84),
      ),
      body: Container(
        color: const Color.fromARGB(255, 55, 68, 84),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.bottomRight,
            child: const Text(
              '5+8',
              style: TextStyle(
                  color: Color.fromARGB(255, 98, 110, 122), fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Text(
              textToDisplay,
              style: const TextStyle(
                  color: Color.fromARGB(255, 195, 212, 223), fontSize: 48),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalculatorButton(
                text: 'C',
                textColor: 0xFF975252,
                fontSize: 24,
                callback: (text) {
                  print(text);
                  setState(() {
                    textToDisplay = '9876';
                  });
                },
              ),
              CalculatorButton(
                text: '+/-',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: (text) => btnOnClick(text),
              ),
              CalculatorButton(
                text: '%',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '/',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalculatorButton(
                text: '7',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '8',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '9',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: 'X',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalculatorButton(
                text: '4',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '5',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '6',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '-',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalculatorButton(
                text: '1',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '2',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '3',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '+',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalculatorButton(
                text: '0',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: ',',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '<',
                fontSize: 24,
                textColor: 0xFFbcc1c6,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '=',
                fontSize: 24,
                textColor: 0xFF687682,
                callback: btnOnClick,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
