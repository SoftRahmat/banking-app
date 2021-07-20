import 'package:bank_cofundr/views/transactsion_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class  Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 30.0,
            left: 15.0,
            right: 15.0,
            bottom: 20.0,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo1',
                child: Container(
                  child: Image.asset('images/cofundr Logo_1.png'),
                  height: 20.0,
                ),
              ),
              SizedBox(width: 78.0),
              Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 30.0,
            left: 15.0,
            right: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RM100.00',
                style: GoogleFonts.comfortaa(fontSize: 50.0, color: Colors.white),
              ),],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Account Balance',
                style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white60),
              ),],
          ),
        ),
        SizedBox(height: 50.0),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff365784),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).hintColor.withOpacity(0.2),
                  offset: Offset(0, 10),
                  blurRadius: 20)
            ],
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Text(
                      'Total Deposit'
                      '                                      RM100.00',
                    style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xff365784),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).hintColor.withOpacity(0.2),
                  offset: Offset(0, 10),
                  blurRadius: 20)
            ],
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Text(
                    'Total Withdrawal'
                        '                                  -RM0.00',
                    style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff365784),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).hintColor.withOpacity(0.2),
                  offset: Offset(0, 10),
                  blurRadius: 20)
            ],
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Text(
                    'Total Deposit'
                        '                                      RM100.00',
                    style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 25.0),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Transaction History',
                  style: GoogleFonts.comfortaa(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.5, color: Colors.white60)
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Expanded(child: Text('22 Ian 2021'
                    '                                            RM100.00',
                  style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white),
                ),),
              ],
            ),
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.white60)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Expanded(child: Text('Deposit'
                      '                                                  Success',
                    style: GoogleFonts.comfortaa(fontSize: 15.0, color: Colors.white60),
                  ),),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: ButtonTheme(
              minWidth: 360.0,
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, TransactionDetails.id);
                },
                child: Text(
                  'View All Transactions',
                  style: GoogleFonts.comfortaa(color: Colors.white,
                    fontSize: 18.0,)
                ),
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffEFA135), width: 0.8,
                    ),
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
              buttonColor: Color(0xffEFA135),
            ),
          ),
        ),
      ],
    );
  }
}
