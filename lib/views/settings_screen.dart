import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = "settings_screen";

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                tag: 'cofun5',
                child: Container(
                  child: Image.asset('images/cofundr Logo_1.png'),
                  height: 20.0,
                ),
              ),
              SizedBox(width: 105.0),
              Text(
                'Settings',
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
        SizedBox(height: 20.0),
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
                  Icons.sync,
                  color: Colors.white60,
                ),
                SizedBox(width: 15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Auto Investment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Create rules to make your investment hassle-free,\n efficient and diverse.',
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
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
          child: Row(
            children: [
              Text(
                "Help & Support",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          // decoration: BoxDecoration(
          //   border: Border(
          //     bottom: BorderSide(width: 1, color: Colors.white),
          //   ),
          // ),
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
          child: ButtonTheme(
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.question_answer_rounded,
                      color: Colors.white60,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FAQ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Have any questions we might have already \nannswered ?Check out our FAQ!',
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
            ),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
          // margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: Color(0xff365784),
            boxShadow: [
              // BoxShadow(
              //     color: Theme.of(context).hintColor.withOpacity(0.2),
              //     offset: Offset(0, 2),
              //     blurRadius: 20)
            ],
          ),
          child: ButtonTheme(
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.white60,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Live Chat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Get instantaneous help from our attentive\n customer support team to resolve\n all of your queries.',
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
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(
            left: 15.0,
          ),
          child: Row(
            children: [
              Text(
                "Account",
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
          // decoration: BoxDecoration(
          //   border: Border(
          //     bottom: BorderSide(width: 1, color: Colors.white),
          //   ),
          // ),
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
          child: ButtonTheme(
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.tag_faces_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Refer your friends',
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
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            color: Color(0xff365784),
            boxShadow: [
              // BoxShadow(
              //     color: Theme.of(context).hintColor.withOpacity(0.2),
              //     offset: Offset(0, 2),
              //     blurRadius: 20)
            ],
          ),
          child: ButtonTheme(
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Logout',
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
          ),
        ),
      ],
    );
  }
}
