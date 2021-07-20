import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bank_cofundr/model/api.dart';
import 'package:bank_cofundr/views/home.dart';



class RegisterScreen extends StatefulWidget {
static const String id = 'registerScreen';

@override
_RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            ColorizeAnimatedTextKit(
              text: ['cofundr'],
              textStyle: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w400,
                color: Color(0xff2287BD),
              ),
              colors: [
                Colors.white,
                Colors.blue,
                Colors.yellow,
                Colors.red,
              ],
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart,
            ),
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
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: Text(
          'We always keep your money with high security',
          style: TextStyle( color: Colors.white,
            fontSize: 15.50,
            fontFamily: 'Avenir LT Std',
            fontWeight: FontWeight.w400,
          ),
          maxLines: 1,
        ),
      ),
      SizedBox(height: 20.0,),
      Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        margin: EdgeInsets.only(left: kMarginPadding, right: kMarginPadding),
        child: TextFormField(
          style: TextStyle(
              fontSize: 20.0, color: Colors.white70),
          // controller: emailController,
          validator: (String value){
            if(value.isEmpty){
              return 'Email cannot be empty';
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: kTextFieldDecoration.copyWith(
            labelText: 'Email',
            hintText:'Enter your email',
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        margin: EdgeInsets.only(left: kMarginPadding, right: kMarginPadding),
        child: TextFormField(
          style: TextStyle(
              fontSize: 20.0, color: Colors.white70),
          obscureText: true,
          validator: (String value) {
            if (value.isEmpty) {
              return "Please enter your password";
            } else {
              return null;
            }
          },
          // controller: passwordController,
          decoration: kTextFieldDecoration.copyWith(
              labelText: 'Password',
              hintText:'Enter your password'
          ),),
      ),
      SizedBox(
        height: 35.0,
      ),
      ButtonTheme(
        minWidth: 360.0,
        height: 60.0,
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.id);
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
              borderRadius: BorderRadius.circular(10.0),
          ),
          splashColor: Colors.white,
        ),
      ),
    ],
  );
}

}