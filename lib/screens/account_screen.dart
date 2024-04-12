import 'package:flutter/material.dart';


class AccountScreen extends StatelessWidget {
   static const routeName = '/account_screen';
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
          ),
        ],
        
      ),
      body: Container(),

    );
  }
}