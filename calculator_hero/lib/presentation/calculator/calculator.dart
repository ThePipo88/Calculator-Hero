import 'package:calculator_hero/presentation/resources/color_manager.dart';
import 'package:calculator_hero/presentation/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({Key? key}) : super(key: key);

  @override
  State<CalculatorView> createState() => _calculatorState();
}

class _calculatorState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(child: Text("Bienvenido")),
    );
  }
}
