import 'package:bank_cofundr/authentication/LoginScreen.dart';
import 'package:bank_cofundr/views/cofunding_now.dart';
import 'package:bank_cofundr/authentication/forgot_thanks.dart';
import 'package:bank_cofundr/authentication/forgotpass_screen.dart';
import 'package:bank_cofundr/authentication/registerScreen.dart';
import 'package:bank_cofundr/views/funds_screen.dart';
import 'package:bank_cofundr/views/investReturns_screen.dart';
import 'package:bank_cofundr/views/invest_screen.dart';
import 'package:bank_cofundr/views/investment_screen.dart';
import 'package:bank_cofundr/views/settings_screen.dart';
import 'package:bank_cofundr/views/transactsion_details.dart';
import 'package:bank_cofundr/views/welcome_screen.dart';
import 'package:bank_cofundr/views/withdrawal%20_screen.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/views/home.dart';


void main() => runApp(BankCofundr());


class BankCofundr extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ForgotScreen.id: (context) => ForgotScreen(),
        ForgotThankScreen.id: (context) => ForgotThankScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CofundingScreen.id: (context) => CofundingScreen(),
        InvestScreen.id: (context) => InvestScreen(),
        InvestmentScreen.id: (context) => InvestmentScreen(),
        InvestReturnScreen.id: (context) => InvestReturnScreen(),
        TransactionDetails.id: (context) => TransactionDetails(),
        FundsScreen.id: (context) => FundsScreen(),
        WithdrawalScreen.id: (context) => WithdrawalScreen(),
        SettingsScreen.id: (context) => SettingsScreen()
      },
    ); // MaterialApp
  }
}

