import 'package:bank_cofundr/views/investment_screen.dart';
import 'package:flutter/material.dart';

class HomeFunction2 extends StatefulWidget {
  @override
  _HomeFunction2State createState() => _HomeFunction2State();
}

class _HomeFunction2State extends State<HomeFunction2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            InvestmentScreen()
          ],
        ),
      ),
    );
  }
}
