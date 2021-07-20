import 'package:bank_cofundr/authentication/LoginScreen.dart';
import 'package:bank_cofundr/authentication/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';



class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  var kMarginPadding = 16.0;
  var kFontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    // divWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kInactiveCardColor,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            // key: _formKey,
              child: Column(
                children: <Widget>[_buildEmailSignUpForm()],
              )),
        ),
      ),
    );
  }
  Widget _buildEmailSignUpForm() {
    //Form 1
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 200.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo1',
                child: Container(
                  child: Image.asset('images/cofundr Logo_1.png'),
                  height: 60.0,
                ),
              ),
              // Column(
              //   children: [
              //     Text(
              //       'cofundr',
              //       style: GoogleFonts.comfortaa(fontSize: 50.0, color: Color(0xff2287BD)),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
          child: Text(
            'Welcome Investor',
            style: TextStyle( color: Colors.white,
              fontSize: 23.0,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
          ),
        ),
        SizedBox(height: 10.00),
        Container(
          child: Text('A new wave of investment innovations for \n discerning investors',
            style: TextStyle( color: Colors.white,
              fontSize: 16.00,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        ButtonTheme(
          minWidth: 360.0,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, RegisterScreen.id);
            },
            child: Text(
              'Sign Up',
              style: TextStyle( color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w400,
              ),
            ),
            color: Color(0xffEFA135),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            splashColor: Colors.white,
          ),
        ),
        SizedBox(height: 10.0,),
        ButtonTheme(
          minWidth: 360.0,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            child: Text(
              'Sign In',
              style: TextStyle( color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w400,
              ),

            ),
            color: Color(0xff071B33),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.white, width: 0.5),
            ),
            splashColor: Color(0xffEFA135),

          ),
        ),
      ],
    );
  }

}
