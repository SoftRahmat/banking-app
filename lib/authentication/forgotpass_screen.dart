import 'package:bank_cofundr/authentication/forgot_thanks.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';
import 'package:bank_cofundr/model/api.dart';
import 'package:bank_cofundr/model/login_model.dart';
import 'package:bank_cofundr/progressHud.dart';

class ForgotScreen extends StatefulWidget {
  static const String id = 'forgotpass_screen';

  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  ForgotRequestModel forgotRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    forgotRequestModel = new ForgotRequestModel();
  }

  var kMarginPadding = 16.0;
  var kFontSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _foriSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _foriSetup(BuildContext context) {
// divWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
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
              key: globalFormKey,
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
            'Forgot Password',
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
            'Enter your email address below',
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
            onSaved: (input) => forgotRequestModel.email = input,
            validator: (input) => !input.contains('@')
                ? "Email Id should be valid"
                : null,
            keyboardType: TextInputType.emailAddress,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Email',
              hintText:'Enter email address here',
            ),
          ),
        ),
        SizedBox(
          height: 45.0,
        ),
        ButtonTheme(
          minWidth: 360.0,
          height: 60.0,
          child: RaisedButton(
            onPressed: () {
              if (validateAndSave()) {
                print(forgotRequestModel.toJson());

                setState(() {
                  isApiCallProcess = true;
                });
                ForgotAPIService forgotApiService = new ForgotAPIService();
                forgotApiService.forgot(forgotRequestModel).then((value) {
                  if (value != null) {
                    setState(() {
                      isApiCallProcess = false;
                    });
                    // Navigator.pushNamed(context, ForgotThankScreen.id);
                    if (value.SuccessMessage.isNotEmpty) {
                      Navigator.pushNamed(context, ForgotThankScreen.id);
                      final snackBar = SnackBar(
                          content: Text("Sent Successful"));
                      scaffoldKey.currentState
                          .showSnackBar(snackBar);
                    } else {
                      final snackBar =
                      SnackBar(content: Text("Enter valid email"));
                      scaffoldKey.currentState
                          .showSnackBar(snackBar);
                    }
                  }
                });
              }
            },
            child: Text(
              'Reset Password',
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
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}


