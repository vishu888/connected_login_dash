import 'package:flutter/material.dart';
import 'package:login_app/main_rating.dart';
import 'package:login_app/moneyslider.dart';
import 'package:login_app/startfeedback.dart';
import '';
import 'feedbackcomment.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slider',
      theme: ThemeData(
        //primaryColor: Color(0xffff520d),
        primaryColor: Color(0xff512ea8),
        //primaryColor: Color(0xff662d8c),
      ),
      home: HomePage(),
      //home: MoneySlider(),
      //home: StarFeedback(),
    );
  }
}