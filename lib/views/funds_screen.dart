import 'package:bank_cofundr/views/withdrawal%20_screen.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/components/page_button.dart';
import 'package:bank_cofundr/constants.dart';

enum Payment {
  deposit,
  withdrawal,
}

class FundsScreen extends StatefulWidget {
  static const String id = "funds_screen";

  @override
  _FundsScreenState createState() => _FundsScreenState();
}

class _FundsScreenState extends State<FundsScreen> {

  Payment selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 30.0,
            left: 30.0,
            right: 15.0,
            bottom: 20.0,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'cofun3',
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
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
          child: Row(
            children: [
              Text(
                "Deposit via FPX",
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
                  Icons.access_time,
                  color: Colors.white,
                ),
                SizedBox(width: 15.0),
                Text(
                  'Kindly note that all deposits must originate from\n your own bank account only. Daily transaction\n limit for FPX is RM 30,000.',
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
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
          // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)
            ),
            color: Color(0xff365784),
            boxShadow: [
              // BoxShadow(
              //     color: Theme.of(context).hintColor.withOpacity(0.2),
              //     offset: Offset(0, 2),
              //     blurRadius: 20)
            ],
          ),
          child: DepositViaFPX(),
        ),
        Container(
          width: 362.0,
          height: 60.0,
          child: ButtonTheme(
            child: RaisedButton(
              onPressed: () {
                // Navigator.pushNamed(context, InvestReturnScreen.id);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(75, 4, 4, 4),
                      child: Text(
                        'Deposit via ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset('images/Rectangle 5.png'),
                    ),
                  ],
                ),
              ),
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff365784),
                  width: 0.8,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
            ),
            buttonColor: Colors.white,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(left: 15.0,),
          child: Row(
            children: [
              Text(
                "Or deposit manually",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          child: ButtonTheme(
            minWidth: 362.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                // Navigator.pushNamed(context, InvestReturnScreen.id);
              },
              child: Text(
                'Deposit Manually ',
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
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            buttonColor: Color(0xffEFA135),
          ),
        ),
      ],
    );
  }
}
class DepositViaFPX extends StatefulWidget {
  @override
  _DepositViaFPXState createState() => _DepositViaFPXState();
}

class _DepositViaFPXState extends State<DepositViaFPX> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 6.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5.0, top: 20.0, bottom: 4.0),

                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Investment Amount ( RM )',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.0, top: 20.0, bottom: 6.0),

                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Minimum Amount RM 100.00',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
