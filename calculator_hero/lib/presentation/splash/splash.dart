import 'dart:async';

import 'package:calculator_hero/presentation/resources/assets_manager.dart';
import 'package:calculator_hero/presentation/resources/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _starDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.calculatorRoute);
  }

  @override
  void initState() {
    super.initState();
    _starDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primary,
        body: const Center(
          child: Image(
            image: AssetImage(ImageAssets.splashLogo),
          ),
        ));
  }
}
