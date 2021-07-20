import 'package:flutter/material.dart';
import 'package:bank_cofundr/constants.dart';

class InvestScreen extends StatefulWidget {
  static const String id = 'invest_screen';
  @override
  _InvestScreenState createState() => _InvestScreenState();
}

class _InvestScreenState extends State<InvestScreen>
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
          'Invest',
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
              Container(
                padding: EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  right: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'RM1000.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Account Balance',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 12.0,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                  width: double.infinity,
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
                  child: InvestElement()),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10.0, right: 0.0),
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                    //     topRight: Radius.circular(10.0)
                    // ),
                    color: Color(0xff0F3261),
                    boxShadow: [
                      // BoxShadow(
                      //     color: Theme.of(context).hintColor.withOpacity(0.2),
                      //     offset: Offset(0, 2),
                      //     blurRadius: 20)
                    ],
                  ),
                  child: InvestElement2()),
              Container(
                child: ButtonTheme(
                  minWidth: 362.0,
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, InvestScreen.id);
                    },
                    child: Text(
                      'Confirm',
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

class InvestElement extends StatefulWidget {
  @override
  _InvestElementState createState() => _InvestElementState();
}

class _InvestElementState extends State<InvestElement>
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
                        children: [
                          Text(
                            "Founded",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 50.0),
                          Text(
                            "928",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 91.5),
                          Text(
                            "Goal",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 50.0),
                          Text(
                            "1M",
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
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff274773))),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Per Annum",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 35.0),
                          Text(
                            "12.5%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 80.0),
                          Text(
                            "Days",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(width: 50.0),
                          Text(
                            "60",
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
        ],
      ),
    );
  }
}

class InvestElement2 extends StatefulWidget {
  @override
  _InvestElement2State createState() => _InvestElement2State();
}

class _InvestElement2State extends State<InvestElement2> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding:
                EdgeInsets.only(left: 6.0, top: 15.0, bottom: 15.0, right: 6.0),
            // color: Color(0xff0F3261),
            // decoration: BoxDecoration(
            //   border: Border(
            //       bottom: BorderSide(width: 1 , color: Color(0xff274773))
            //   ),
            // ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Min",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 82.0),
                    Text(
                      "RM50.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 61.5),
                    Text(
                      "Max",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      "2.4k",
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
            padding: EdgeInsets.only(left: 6.0, top: 15.0, right: 6.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Investment Amount ( RM )",
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
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            margin:
                EdgeInsets.only(left: kMarginPadding, right: kMarginPadding),
            child: new TextFormField(
              style: TextStyle(fontSize: 20.0, color: Colors.white70),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'your amount here',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  },
                  checkColor: Colors.white,
                  hoverColor: Color(0xff0F3261),
                  focusColor: Colors.white,
                ),
                Text(
                  "The information submitted in my last Suitability \n Assesment Test remains true and accurate.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontFamily: 'Avenir LT Std',
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
