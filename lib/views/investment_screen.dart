import 'package:bank_cofundr/views/investReturns_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/components/page_button.dart';

class InvestmentScreen extends StatefulWidget {
  static const String id = 'investment_screen';
  @override
  _InvestmentScreenState createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen>
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
                tag: 'cofun1',
                child: Container(
                  child: Image.asset('images/cofundr Logo_1.png'),
                  height: 20.0,
                ),
              ),
              SizedBox(width: 80.0),
              Text(
                'My Investments',
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
                title: 'Ongoing',
                colour: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, null);
                },
              ),
              SizedBox(
                width: 20.0,
              ),
              Row(
                children: <Widget>[
                  PageButton2(
                    title: 'Completed',
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
        SizedBox(height: 20.0),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
          // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            color: Color(0xff365784),
            boxShadow: [
              // BoxShadow(
              //     color: Theme.of(context).hintColor.withOpacity(0.2),
              //     offset: Offset(0, 2),
              //     blurRadius: 20)
            ],
          ),
          child: InvestDetails(),
        ),
        Container(
          child: ButtonTheme(
            minWidth: 362.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, InvestReturnScreen.id);
              },
              child: Text(
                'View Return ',
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
        SizedBox(height: 20.0),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
          // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            color: Color(0xff365784),
            boxShadow: [
              // BoxShadow(
              //     color: Theme.of(context).hintColor.withOpacity(0.2),
              //     offset: Offset(0, 2),
              //     blurRadius: 20)
            ],
          ),
          child: InvestDetails1(),
        ),
        Container(
          child: ButtonTheme(
            minWidth: 362.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, InvestReturnScreen.id);
              },
              child: Text(
                'View Return ',
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
    );
  }
}

class InvestDetails extends StatefulWidget {
  @override
  _InvestDetailsState createState() => _InvestDetailsState();
}

class _InvestDetailsState extends State<InvestDetails>
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
    return SingleChildScrollView(
      child: Container(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 6.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5.0, bottom: 4.0),
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 4, color: Color(0xff274773)),
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
                                '  MBAP - 2392922222',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 14.0,
                                  fontFamily: 'Avenir LT Std',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '  Accounts Payable Financing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontFamily: 'Avenir LT Std',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Simulate Return",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(width: 4.0),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
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
                      children: [
                        Text(
                          "Invested",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 50.0),
                        Text(
                          "xx.xx",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 50.5),
                        Text(
                          "Collected",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 50.0),
                        Text(
                          "xx.xx",
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
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff274773))),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Outstanding",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 25.0),
                        Text(
                          "xx.xx",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 50.0),
                        Text(
                          "Profit",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(width: 80.0),
                        Text(
                          "xx.xx",
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
            ],
          ),
        ),
      ),
    );
  }
}

class InvestDetails1 extends StatefulWidget {
  @override
  _InvestDetails1State createState() => _InvestDetails1State();
}

class _InvestDetails1State extends State<InvestDetails1>
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
            padding: EdgeInsets.only(top: 6.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5.0, bottom: 4.0),
                  height: 55.0,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 4, color: Color(0xff274773)),
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
                            '  MBAP - 2392929292',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '  Accounts Payable Financing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Simulate Return",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(width: 4.0),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
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
                  children: [
                    Text(
                      "Invested",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      "xx.xx",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 50.5),
                    Text(
                      "Collected",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      "xx.xx",
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
            margin: EdgeInsets.only(bottom: 25.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff274773))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Outstanding",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 25.0),
                    Text(
                      "xx.xx",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      "Profit",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 80.0),
                    Text(
                      "xx.xx",
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
        ],
      ),
    );
  }
}
