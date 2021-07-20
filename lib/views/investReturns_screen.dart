import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';

class InvestReturnScreen extends StatefulWidget {
  static const String id = 'investReturns_screen';
  @override
  _InvestReturnScreenState createState() => _InvestReturnScreenState();
}

class _InvestReturnScreenState extends State<InvestReturnScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColor,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text(
          'Returns',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontFamily: 'Avenir LT Std',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF071B33),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 50.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xff365784),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),
                // child here

                child: InvestReturn1(),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Repayments",
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
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xff365784),
                  boxShadow: [
                    // BoxShadow(
                    //     color: Theme.of(context).hintColor.withOpacity(0.2),
                    //     offset: Offset(0, 2),
                    //     blurRadius: 20)
                  ],
                ),

                // child here

                child: InvestReturn2(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InvestReturn1 extends StatefulWidget {
  @override
  _InvestReturn1State createState() => _InvestReturn1State();
}

class _InvestReturn1State extends State<InvestReturn1>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff274773))),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Amount Invested:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 200.0),
                          Text(
                            "4.5k",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff274773))),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Amount Repaid:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 208.0),
                          Text(
                            "1.5k",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 10.0, top: 15.0, bottom: 30.0, right: 6.0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff274773))),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Profit:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 270.0),
                          Text(
                            "0.5k",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// new widget here

class InvestReturn2 extends StatefulWidget {
  @override
  _InvestReturn2State createState() => _InvestReturn2State();
}

class _InvestReturn2State extends State<InvestReturn2>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xff0F3261),
            padding: EdgeInsets.only(
                left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      "Principal(RM)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      "Interest (RM)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      "Paid (RM)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
            margin: EdgeInsets.only(bottom: 0.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff091A31))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "5.02.20",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 25.0),
                    Text(
                      "4.5K",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 90.0),
                    Text(
                      "20.50",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 80.0),
                    Icon(
                      Icons.check_circle,
                      size: 24,
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff091A31))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "15.02.20",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      "4.5K",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 90.5),
                    Text(
                      "30.0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 85.0),
                    Icon(
                      Icons.check_circle,
                      size: 24,
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 10.0, top: 15.0, bottom: 15.0, right: 6.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff091A31))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "21.02.20",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      "4.5K",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 90.5),
                    Text(
                      "30.0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 85.0),
                    Icon(
                      Icons.check_circle,
                      size: 24,
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
