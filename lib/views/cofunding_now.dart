import 'package:bank_cofundr/model/cofundnow_model.dart';
import 'package:bank_cofundr/views/invest_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bank_cofundr/views/transactsion_details.dart';
import 'package:bank_cofundr/progressHud.dart';
import 'package:bank_cofundr/constants.dart';

class CofundingScreen extends StatefulWidget {
  static const String id = 'cofunding_now';
  @override
  _CofundingScreenState createState() => _CofundingScreenState();
}

class _CofundingScreenState extends State<CofundingScreen>
    with SingleTickerProviderStateMixin {
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
              SizedBox(width: 95.0),
              Text(
                'Cofunding',
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
          padding: EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Text(
                'Cofunding Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
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
                  topRight: Radius.circular(10.0)),
              color: Color(0xff365784),
              boxShadow: [
                // BoxShadow(
                //     color: Theme.of(context).hintColor.withOpacity(0.2),
                //     offset: Offset(0, 2),
                //     blurRadius: 20)
              ],
            ),
            child: cofundingElement()),
        Container(
          child: ButtonTheme(
            minWidth: 362.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, InvestScreen.id);
              },
              child: Text(
                'Invest',
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

class cofundingElement extends StatefulWidget {
  @override
  _cofundingElementState createState() => _cofundingElementState();
}

class _cofundingElementState extends State<cofundingElement> {
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  FundnowRequestModel fundnowRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fundnowRequestModel = new FundnowRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _fundUiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _fundUiSetup(BuildContext context) {
    // divWidth = MediaQuery.of(context).size.width;
    return _fundnowBuild();
  }

  // @override
  Widget _fundnowBuild() {
    return Container(
      key: scaffoldKey,
      child: Column(
        key: globalFormKey,
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
            padding:
                EdgeInsets.only(left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
            height: 35.0,
            decoration: BoxDecoration(
              color: Color(0xff0F3261),
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff112C51))),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Start At',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      children: [
                        Text(
                          "February 2021 07:00pm",
                          style: TextStyle(
                              color: Color(0xffEFA135),
                              fontSize: 16.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
            height: 35.0,
            decoration: BoxDecoration(
              color: Color(0xff0F3261),
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff112C51))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' You have invested ',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      children: [
                        Text(
                          "RM1000.00",
                          style: TextStyle(
                              color: Color(0xff2EEFFF),
                              fontSize: 14.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 35.0,
            padding:
                EdgeInsets.only(left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
            color: Color(0xff0F3261),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Total Outstanding: ',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      children: [
                        Text(
                          "3 times",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          " in this borrower,",
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 16.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
            height: 35.0,
            decoration: BoxDecoration(
              color: Color(0xff0F3261),
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff112C51))),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' totalling ',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 16.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      children: [
                        Text(
                          "RM4500.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
            height: 35.0,
            color: Color(0xff0F3261),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Total Outstanding: ',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Row(
                      children: [
                        Text(
                          "RM2300.00",
                          style: TextStyle(
                              color: Color(0xffFF2020),
                              fontSize: 16.0,
                              fontFamily: 'Avenir LT Std',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(left: 10.0, top: 15.0, bottom: 6.0, right: 6.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xff274773))),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          ' Industry ',
                          style: TextStyle(
                            color: Color(0xff9BA5B5),
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Wholesale and Retail Trade; Repair\n"
                            "of Motor Vehicles and Motorcycles",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Avenir LT Std',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                      left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
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
                      left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
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
                Container(
                  padding: EdgeInsets.only(
                      left: 10.0, top: 6.0, bottom: 6.0, right: 6.0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Color(0xff274773))),
                  ),
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
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, InvestScreen.id);
                  },
                  child: Text(
                    'View Factsheet',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
