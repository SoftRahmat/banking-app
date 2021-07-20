import 'package:bank_cofundr/homeWidget/home_widget2.dart';
import 'package:bank_cofundr/homeWidget/home_widget3.dart';
import 'package:bank_cofundr/homeWidget/home_widget4.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/homeWidget/home_widget.dart';
import 'package:bank_cofundr/homeWidget/home_widget1.dart';


class  HomeScreen extends StatefulWidget {

  static const String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color : Colors.white);
  List<Widget> _widgetOptions = <Widget>[
    HomeFunction1(),
    HomeFunction2(),
    HomeFunction(),
    HomeFunction3(),
    HomeFunction4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff091A31),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25.0,
        backgroundColor: Color(0xff122D51),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_rounded),
            label: 'Cofunding',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label:'Investment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Funds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff9B9B9B),
        onTap: _onItemTapped,
      ),
    );
  }
}