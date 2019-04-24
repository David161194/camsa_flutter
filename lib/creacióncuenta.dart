import 'package:camsa_login/ui/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreacionCuenta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Color(0xFF1A2672),


      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0),
          child:  Image(
            width: 250.0,
            height: 150.0,
            fit: BoxFit.fill,
            image:  AssetImage('assets/img/Logo2.png'),
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 50.0),
          child:
          Text("""Tu contraseña será enviada a este correo: alon*****************
          
 ¿Este es tu correo?
          """,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontFamily: "WorkSansSemiBold"
            ),

          ),
        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
               Flexible(
                 child: RaisedButton(
                   onPressed: () {
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
                   padding: const EdgeInsets.symmetric(vertical: 15.0),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                   child: const Text('Si'),
                 ),
               ),
               Flexible(
                 child: Container(
                   //padding: EdgeInsets.symmetric(horizontal: 10.0),
                 ),
               ),
               Flexible(
                 child:  RaisedButton(
                   onPressed: () {
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
                   padding: const EdgeInsets.symmetric(vertical: 15.0),

                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                   child: const Text('No'),
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