

import 'package:camsa_login/configuracion.dart';
import 'package:camsa_login/reportes.dart';
import 'package:camsa_login/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:camsa_login/ui/login_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'CamsaProject',

    theme: ThemeData(

        primaryColor: Color(0xFF1D539B),
    ),
      initialRoute: '/',
      routes: {

        '/': (context) => LoginPage(),

        '/second': (context) => SecondScreen(),

        '/mante': (context) => Reportes(),

        '/confi': (context) => Configuracion(),

      },

      //home: LoginPage(),

    );

  }
}