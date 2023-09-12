import 'package:flutter/material.dart';
// import 'package:google_fonts/google_dart.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final double fontSize;
  final Function callback;

  const CalculatorButton(
      {required this.text,
      required this.textColor,
      required this.fontSize,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: SizedBox(
        width: 88,
        height: 88,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 52, 65, 81))),
          onPressed: () => {callback()},
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, color: Color(textColor)),
          ),
        ),
      ),
    );
  }
}
