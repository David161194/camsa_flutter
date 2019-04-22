import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreacionCuenta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Color(0xFF1A2672),
      appBar: AppBar(
          title: Text ("Nueva contraseña"),
      ),

      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0),
          child: new Image(
            width: 250.0,
            height: 150.0,
            fit: BoxFit.fill,
            image: new AssetImage('assets/img/Logo2.png'),
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 50.0),
          child:
          Text("Tu nueva contraseña ha sido enviada al correo: alon*****************",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontFamily: "WorkSansSemiBold"
            ),

          ),
        ),
            ],
        ),
      ),
    );
  }


}