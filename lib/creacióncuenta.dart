
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreacionCuenta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Color(0xFF1D539B),


      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.only(top: 50.0),
          child:  Image(
              width: 100.0,
              height: 70.0,
              fit: BoxFit.fill,
              image:  AssetImage('assets/img/Logoof.png')
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 150.0),
          child:
          Text("""Tu contraseña será enviada a este correo: alon*****************
          
 ¿Este es tu correo?
          """,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: "WorkSansSemiBold"
            ),

          ),
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quejas()),
                           );*/
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {

                          return AlertDialog(
                            title: Text("Mensaje"),
                            content:  Text("Tu contraseña será enviada a tu correo"),
                            actions: <Widget>[
                              FlatButton(
                                child:  Text("Aceptar"),
                                onPressed: () {
                                  /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );*/
                                  Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
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
                          top: 20.0,
                          right: 20.0,
                          left: 20.0
                      ),
                      height: 44.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF214575),
                      ),
                      child: Center(
                        child: Text("Si",
                            style: TextStyle(
                                fontFamily: "Sabritas",
                                fontSize: 16.0,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                  //Container(),
                  InkWell(
                    onTap: () {
                      /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sugerencias()),
                              );*/
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {

                          return AlertDialog(
                            title: Text("Mensaje"),
                            content:  Text("""Comunicate con soporte al siguiente correo: 
                           
                           soporte@camsa.com"""),
                            actions: <Widget>[
                              FlatButton(
                                  child:  Text("Aceptar"),
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                                  }
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 20.0,
                          right: 20.0,
                          left: 20.0
                      ),
                      height: 44.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF214575),
                      ),
                      child: Center(
                        child: Text("No",
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


            ],
        ),
      ),
    );
  }


}
/*showDialog(
                       context: context,
                       builder: (BuildContext context) {

                         return AlertDialog(
                           title: Text("Mensaje"),
                           content:  Text("Tu contraseña será enviada a tu correo"),
                           actions: <Widget>[
                             FlatButton(
                               child:  Text("Aceptar"),
                               onPressed: () {
                                 /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );*/
                                 Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
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
                     );*/
/*showDialog(
                       context: context,
                       builder: (BuildContext context) {

                         return AlertDialog(
                           title: Text("Mensaje"),
                           content:  Text("""Comunicate con soporte al siguiente correo:

                           soporte@camsa.com"""),
                           actions: <Widget>[
                             FlatButton(
                               child:  Text("Aceptar"),
                               onPressed: () {
                                 Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                               }
                             ),
                           ],
                         );
                       },
                     );*/