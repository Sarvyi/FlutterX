import 'package:flutter/material.dart';
import 'package:papp1/calculator_material_page.dart';

void main() {
  runApp(const Calci());
}

class Calci extends StatelessWidget {
  const Calci({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: const TextTheme(
          displayMedium :TextStyle(color: Color.fromARGB(255, 205, 215, 221)) 

        ),
      ),
      home: const CalculatorMaterialApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//  Color.fromARGB(255, 55, 68, 84)