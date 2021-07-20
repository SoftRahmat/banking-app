import 'package:bank_cofundr/views/settings_screen.dart';
import 'package:flutter/material.dart';


class HomeFunction4 extends StatefulWidget {
  @override
  _HomeFunction4State createState() => _HomeFunction4State();
}

class _HomeFunction4State extends State<HomeFunction4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
          SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
