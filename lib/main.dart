import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:flutter_carrot_market_ui/screens/main_screens.dart';

void main() {
  // 1
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      // 2
      return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      // 3
      home: MainScreens(),
      // 4
      theme: theme(),

    );



  }
}

