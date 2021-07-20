import 'package:flutter/material.dart';
import 'package:bank_cofundr/views/transaction.dart';

class HomeFunction extends StatefulWidget {
  @override
  _HomeFunctionState createState() => _HomeFunctionState();
}

class _HomeFunctionState extends State<HomeFunction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Transaction(),
          ],
        ),
      ),
    );
  }
}
