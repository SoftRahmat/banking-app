import 'package:bank_cofundr/views/funds_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';
import 'package:bank_cofundr/components/page_button.dart';

enum Payment {
  deposit,
  withdrawal,
}

class WithdrawalScreen extends StatefulWidget {
  static const String id = 'withdrawal_screen';
  @override
  _WithdrawalScreenState createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  Payment selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColor,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 50.0,
                  left: 30.0,
                  right: 15.0,
                  bottom: 20.0,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'cofun4',
                      child: Container(
                        child: Image.asset('images/cofundr Logo_1.png'),
                        height: 20.0,
                      ),
                    ),
                    SizedBox(width: 105.0),
                    Text(
                      'Funds',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    PageButton2(
                      title: 'Deposit',
                      colour: selectedPayment == Payment.deposit
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      onPressed: () {
                        setState(() {
                          setState(() {
                            selectedPayment = Payment.deposit;
                          });
                        });
                        Navigator.pushNamed(context, null);
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        PageButton2(
                          title: 'Withdrawal',
                          colour: selectedPayment == Payment.withdrawal
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          onPressed: () {
                            setState(() {
                              selectedPayment = Payment.withdrawal;
                            });
                            Navigator.pushNamed(context, WithdrawalScreen.id);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff365784),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        'Please allow up to 3 business days to process\n your withdrawal request',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    Text(
                      "1. Withdraw To",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff1f385a),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Text(
                        'MAYBANK BERHAD - 238939298',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 90.0),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white60,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  color: Color(0xff1f385a),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Text(
                        'Please upload a bank statement for us to do a one-time\n verification. In the attachment, the following must be\n visible:\n'
                        "● Bank\n"
                        "● Account Name\n"
                        "● Account Number\n",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  color: Color(0xff1f385a),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_outlined,
                        color: Colors.white60,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Upload Bank Statement',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    Text(
                      "2. Withdraw Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  color: Color(0xff365784),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  margin:
                  EdgeInsets.only(left: kMarginPadding, right: kMarginPadding),
                  child: new TextFormField(
                    style: TextStyle(fontSize: 20.0, color: Colors.white70),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Amount',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: ButtonTheme(
                  minWidth: 361.5,
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, InvestScreen.id);
                    },
                    child: Text(
                      'Withdraw',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xffEFA135),
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                  ),
                  buttonColor: Color(0xffEFA135),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
