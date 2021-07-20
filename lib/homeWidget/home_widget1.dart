import 'package:bank_cofundr/views/cofunding_now.dart';
import 'package:flutter/material.dart';

class HomeFunction1 extends StatefulWidget {
  @override
  _HomeFunction1State createState() => _HomeFunction1State();
}

class _HomeFunction1State extends State<HomeFunction1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            CofundingScreen()
          ],
        ),
      ),
    );
  }
}
