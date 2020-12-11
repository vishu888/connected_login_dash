import 'package:flutter/material.dart';
class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()=>Future.value(true), //to be made 'false' once the payment gateway page is made
        child :Scaffold(
            appBar: AppBar(
              title: Text('Payment Gateway'),
              centerTitle: true,
            )
        )
    );
  }
}