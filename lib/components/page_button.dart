import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageButton1 extends StatelessWidget {
  PageButton1({this.title, this.colour, @required this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
        child: ButtonTheme(
          minWidth: 190.0,
          height: 60,
          child: RaisedButton(
            hoverColor: Colors.orange.shade600,
            splashColor: Colors.white70,
            onPressed: onPressed,
            child: Text(
              title,
              style: GoogleFonts.comfortaa(color: Colors.white,
                fontSize: 15.0,)
            ),
            color: Color(0xff141C42),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.blueAccent, width: 1.0),
            ),
          ),
        ),
    );
  }
}
class PageButton2 extends StatelessWidget {
  PageButton2({this.title, this.colour, @required this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.0, bottom: 10.0
      ),
      child: ButtonTheme(
        minWidth: 170.0,
        height: 50,
        child: RaisedButton(
          hoverColor: Colors.orange.shade600,
          splashColor: Colors.white70,
          onPressed: onPressed,
          child: Text(
              title,
            style:TextStyle( color: Colors.white,
              fontSize: 15.0,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w600,
            ),
          ),
          color: Color(0xff0C2240),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Color(0xff274773), width: 1.0),
          ),
        ),
      ),
    );
  }
}