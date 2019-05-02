import 'package:flutter/material.dart';
class Confirmar extends StatefulWidget {
  Confirmar({Key key}) : super(key: key);

  @override
  _confir createState() => _confir();
}
class _confir extends State<Confirmar> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          Future<DateTime> selectedDate = showDatePicker(
                            context: context,
                            //locale: Locale("es", "MX"),
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2018),
                            lastDate: DateTime(2030),
                            builder: (BuildContext context, Widget child) {
                              return Theme(
                                data: ThemeData.light(),
                                child: child,
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
    );

  }
  }