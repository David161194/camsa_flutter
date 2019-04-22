import 'package:camsa_login/utils/thirdscreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A2672),

       body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdSecreen()),
            );
          },
          child: Text('Segunda vista'),
        ),
      ),
    );
  }
}