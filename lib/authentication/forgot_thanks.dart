import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';

class ForgotThankScreen extends StatefulWidget {
  static const String id = 'forgot_thanks';

  @override
  _ForgotThankScreenState createState() => _ForgotThankScreenState();
}

class _ForgotThankScreenState extends State<ForgotThankScreen> {
  var kMarginPadding = 16.0;
  var kFontSize = 16.0;
  @override
  Widget build(BuildContext context) {
// divWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },),
        ],
        backgroundColor: Color(0xff091A31),
      ),
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
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
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
            'Thank you.',
            style: TextStyle( color: Colors.white,
              fontSize: 23.0,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Text(
            'If there\'s an account with this email address, you\'ll receive a link via email to reset your password.',
            style: TextStyle( color: Colors.white,
              fontSize: 15.50,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

}