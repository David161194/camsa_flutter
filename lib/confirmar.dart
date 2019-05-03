import 'package:camsa_login/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Confirmar extends StatefulWidget {
  Confirmar({Key key}) : super(key: key);

  @override
  _confir createState() => _confir();
}

class _confir extends State<Confirmar> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ru', 'RU'),
      ],

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFF1D539B),
          title: Text("Confirmar visita",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: "Sabritas",
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).pop();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {

                                return AlertDialog(
                                  title: Text("Confirmar cancelación"),
                                  content:  Text("¿Está seguro de cancelar la visita de nuestro técnico?"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child:  Text("Aceptar"),
                                      onPressed: () {
                                        /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );*/
                                        Navigator.pushNamedAndRemoveUntil(context, '/second', (_) => false);
                                      },
                                    ),

                                    FlatButton(
                                      child:  Text("Cancelar"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 60.0,
                                right: 20.0,
                                left: 20.0
                            ),
                            height: 50.0,
                            width: 240.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text("Cancelar",
                                style: TextStyle(
                                    fontFamily: "Sabritas",
                                    fontSize: 16.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quejas()),
                           );*/
                            /* setState(() {
                            _visible = !_visible;
                          });*/
                            DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2019, 5, 2),
                              maxTime: DateTime(2021, 6, 7),
                                theme: DatePickerTheme(
                                    backgroundColor: Color(0xFF214575),
                                    itemStyle: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold),
                                    doneStyle:
                                    TextStyle(color: Colors.white, fontSize: 16)),
                                onChanged: (date) {
                            //print('change $date');

                          }, onConfirm: (date) {
                           // print('confirm $date');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SecondScreen()),
                                  );

                                }, currentTime: DateTime.now(), locale: LocaleType.es);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 60.0,
                                right: 20.0,
                                left: 20.0
                            ),
                            height: 50.0,
                            width: 240.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text("Reagendar",
                                  style: TextStyle(
                                      fontFamily: "Sabritas",
                                      fontSize: 16.0,
                                      color: Colors.white
                                  )
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 60.0,
                                right: 20.0,
                                left: 20.0
                            ),
                            height: 50.0,
                            width: 240.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text("Aceptar",
                                  style: TextStyle(
                                      fontFamily: "Sabritas",
                                      fontSize: 16.0,
                                      color: Colors.white
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  /* AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    width: 300.0,
                    height: 150.0,
                    color: Colors.white,

                  ),
                ),*/
                ],
              ),




            ],
          ),
        ),
      ),

    );

  }
  }