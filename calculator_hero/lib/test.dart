import 'package:calculator_hero/app/app.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  void updateAppSate() {
    MyApp.instance.appState = 10;
  }

  void getAppState() {
    print(MyApp.instance.appState); //10
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
