import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bank_cofundr/components/page_button.dart';

class TransactionDetails extends StatefulWidget {
  static const String id = 'transactsion_details';
  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141C42),
        appBar: AppBar(
          leading: null,
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
          },),
          ],
          title: Text('Transaction History',
          style: GoogleFonts.comfortaa(fontSize: 20.0, color: Colors.white),
          ),
          backgroundColor: Color(0xff141C42),
    ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PageButton1(
                  title: 'Deposit',
                  colour: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, null);
                  },
                ),
                SizedBox(
                  width: 10.0,
                ),
                Row(
                  children: <Widget>[
                    PageButton1(
                      title: 'Withdrawal',
                      colour: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, null);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Container(
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
            padding: const EdgeInsets.only(left: 15.0, right: 10.0),
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
        ],
      ),
    );
  }
}
