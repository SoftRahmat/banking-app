import 'dart:convert';
import 'package:bank_cofundr/authentication/RegisterScreen.dart';
import 'package:bank_cofundr/authentication/forgotpass_screen.dart';
import 'package:bank_cofundr/model/api_cofundnow.dart';
import 'package:bank_cofundr/views/home.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bank_cofundr/model/api.dart';
import 'package:bank_cofundr/model/login_model.dart';
import 'package:bank_cofundr/progressHud.dart';
import 'package:bank_cofundr/model/cofundnow_model.dart';
import 'package:bank_cofundr/model/api_cofundnow.dart';




class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  // LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  bool _vis = true;
  void _toggleVisibility(){
    if (_vis == true){
      _vis = false;
    }else{
      _vis = true;
    }
    setState(() {

    });
  }
  bool isApiCallProcess = false;
  // bool hidePassword = true;
  // GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  // FundnowRequestModel fundnowRequestModel;
  // final scaffoldKey = GlobalKey<ScaffoldState>();
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fundnowRequestModel = new FundnowRequestModel();
  // }


  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }
  var kMarginPadding = 16.0;
  var kFontSize = 16.0;
  @override

  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }
  Widget _uiSetup(BuildContext context) {
    // divWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kInactiveCardColor,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              key: globalFormKey,
            // key: _globalkey,
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
              Column(
                children: [
                  Text(
                    'cofundr',
                        style: TextStyle( color: Colors.white,
                          fontSize: 50.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w400,
                        ),
                  )
                ],
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
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
          child: Text(
            'Enter your email and password to login',
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
          child: new TextFormField(
              style: TextStyle(
                fontSize: 20.0, color: Colors.white70),
              // controller: emailController,
              onSaved: (input) => loginRequestModel.email = input,
            // onSaved: (input) => fundnowRequestModel.UserID = input,
              validator: (input) => !input.contains('@')
                  ? "Email Id should be valid"
                  : null,
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
          child: Column(
            children: [
              new TextFormField(
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.white70),
                  keyboardType: TextInputType.text,
                  onSaved: (input) => loginRequestModel.password = input,
                // onSaved: (input) => fundnowRequestModel.FetchType = input,
                  validator: (input) => input.length < 2
                      ? "Password should be more than 2 characters"
                      : null,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
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
                    suffixIcon: InkWell(
                      onTap: _toggleVisibility,
                      child: Icon(
                        Icons.visibility,
                      ),
                    ),
                  ),
                obscureText: _vis,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
        ButtonTheme(
          minWidth: 360.0,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              // onPressed: () async {
              // final String email = emailController.text;
              // final String password = passwordController.text;
              // final LoginResponseModel user = await createUser(loginRequestModel);

              // setState(() {
              //   _user = user;
              // });

              if (validateAndSave()) {
                print(loginRequestModel.toJson());

                setState(() {
                  isApiCallProcess = true;
                });
                APIService apiService = new APIService();
                apiService.createUser(loginRequestModel).then((value) {
                  if (value != null) {
                    setState(() {
                      isApiCallProcess = false;
                    });
                    // Navigator.pushNamed(context, HomeScreen.id);
                    if (value.AccessToken.isNotEmpty) {
                      Navigator.pushNamed(context, HomeScreen.id);
                      final snackBar = SnackBar(
                          content: Text("Login Successful"));
                      scaffoldKey.currentState
                          .showSnackBar(snackBar);
                    } else {
                      final snackBar =
                      SnackBar(content: Text("Please check your email or password"));
                      scaffoldKey.currentState
                          .showSnackBar(snackBar);
                    }
                  }
                }
                );
              }

              //test API

              // if (validateAndSave()) {
              //   print(fundnowRequestModel.toJson());
              //
              //   setState(() {
              //     isApiCallProcess = true;
              //   });
              //   FundnowAPIService apiService = new FundnowAPIService();
              //   apiService.getFundNow(fundnowRequestModel).then((value) {
              //     if (value != null) {
              //       setState(() {
              //         isApiCallProcess = false;
              //       });
              //       // Navigator.pushNamed(context, HomeScreen.id);
              //       if (value.valid == 1) {
              //         Navigator.pushNamed(context, HomeScreen.id);
              //         final snackBar = SnackBar(
              //             content: Text("Login Successful"));
              //         scaffoldKey.currentState
              //             .showSnackBar(snackBar);
              //       } else {
              //         final snackBar =
              //         SnackBar(content: Text("Please check your email or password"));
              //         scaffoldKey.currentState
              //             .showSnackBar(snackBar);
              //       }
              //     }
              //   }
              //   );
              // }
            },
            child: Text(
              'Login',
              style: TextStyle( color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w400
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
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?',
                style: TextStyle( color: Colors.blueGrey,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                ),
              ),
              FlatButton(child: Text('Create account',
                style: TextStyle( color: Colors.white,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                ),
              ),
                onPressed: (){
                  Navigator.pushNamed(context, RegisterScreen.id);
                },)
            ],
          ),
        ),
        FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, ForgotScreen.id);
            },
            child: Text(
              'Forgot password?',
              style: TextStyle( color: Colors.redAccent,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
              ),
            )),
      ],
    );
  }
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}

