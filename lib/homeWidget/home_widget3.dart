import 'package:bank_cofundr/views/funds_screen.dart';
import 'package:flutter/material.dart';


class HomeFunction3 extends StatefulWidget {
  @override
  _HomeFunction3State createState() => _HomeFunction3State();
}

class _HomeFunction3State extends State<HomeFunction3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            FundsScreen(),
          ],
        ),
      ),
    );
  }
}
