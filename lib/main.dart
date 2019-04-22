import 'package:camsa_login/style/theme.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:camsa_login/ui/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'CamsaProject',
    theme: ThemeData(

        primaryColor: Color(0xFF1A2672),
    ),
      home: LoginPage(),
    );
  }
}