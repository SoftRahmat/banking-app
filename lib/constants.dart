import 'package:flutter/material.dart';
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF071B33);

const kTextFieldDecoration = InputDecoration(
  labelText: "value",
  hintText: "Input your value",
  hintStyle: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
  labelStyle: TextStyle(
      color: Colors.blueAccent,
      fontFamily: 'Avenir LT Std',
      fontSize: 13),
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 0.5),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),

);
var kMarginPadding = 5.0;
var kFontSize = 16.0;