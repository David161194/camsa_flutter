import 'package:camsa_login/Opiniones.dart';
import 'package:camsa_login/configuracion.dart';
import 'package:camsa_login/confirmar.dart';
import 'package:camsa_login/contratacion.dart';
import 'package:camsa_login/contratacion.dart' as prefix0;
import 'package:camsa_login/mis_servicios.dart';
import 'package:camsa_login/reportes.dart';
import 'package:camsa_login/tecnico.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Navigator.pop(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Menú",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontFamily: "Sabritas",
         ),
        ),
        centerTitle: true,
        leading: Container(),
      ),
      endDrawer: Drawer(
      elevation: 10.0,

      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Antonio'),
            accountEmail: Text('alonso1611@hotmail.com'),
            currentAccountPicture:
                Container(
                  height: 70,
                  width: 70,
                  child:Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/img/Logoof.png')),),

            decoration: BoxDecoration(color: Color(0xFF1D539B)),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Configuración'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Configuracion()),
              );
            },
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text('Ayuda'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Cerrrar sesión'),
            onTap: () {
              //Navigator.popUntil(context, ModalRoute.withName('/'));
              Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
            },
          )
        ],
      ),

    ),

      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        child: Column(
          //padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            Container(
              //padding: EdgeInsets.only(top: 10.0),
            ),
              Expanded(
                flex: 2,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Opiniones()),
                      );
                    },
                    child: Container(
                     width: 320.0,
                      height: 130.0,
                      // height: 83.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child:  Container(
                             // width: 320.0,

                              //height: 90.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/img/cafe.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                         Expanded(
                           flex: 2,
                            child: Text(
                              "Mi Experiencia",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: "Sabritas",
                              ),

                            ),

                          ),

                        ],
                      ),
                    ),
                  ),
                  // elevation: 5.0,
                  color: Colors.white,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


                ),
              ),
            Expanded(
              flex: 2,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reportes()),
                    );
                  },
                  child: Container(
                    width: 320.0,
                    height: 130.0,
                    // height: 83.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child:  Container(
                            // width: 320.0,

                            //height: 90.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/img/cafe.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Text(
                            "Guía de Soluciones",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: "Sabritas",
                            ),

                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                // elevation: 5.0,
                color: Colors.white,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


              ),
            ),
          /*  Container(
              padding: EdgeInsets.only(top: 10.0),

            ),*/
            Expanded(
              flex: 2,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contratacion()),
                    );
                  },
                  child: Container(
                    width: 320.0,
                    height: 130.0,
                    // height: 83.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child:  Container(
                            // width: 320.0,

                            //height: 90.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/img/cafe.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Text(
                            "Contratación de servicios",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: "Sabritas",
                            ),

                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                // elevation: 5.0,
                color: Colors.white,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


              ),
            ),

          /*  Container(
              padding: EdgeInsets.only(top: 10.0),

            ),*/

            Expanded(
              flex: 2,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mis_servicios()),
                    );
                  },
                  child: Container(
                    width: 320.0,
                    height: 130.0,
                    // height: 83.0,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child:  Container(
                            // width: 320.0,

                            //height: 90.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/img/cafe.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Text(
                            "Mi Cuenta",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: "Sabritas",
                            ),

                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                // elevation: 5.0,
                color: Colors.white,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


              ),
            ),
         /*   Container(
              padding: EdgeInsets.only(top: 10.0),

            ),*/


            Container(
              padding: EdgeInsets.only(bottom: 5.0),

            ),
              ],
            ),


        ),
      floatingActionButton:
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30.0),
           child: Align(
              alignment: Alignment.bottomLeft,

              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Color(0xFF1D539B),
                child: Icon(Icons.check,color: Colors.white,),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Confirmar()),
                  );
                },
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Color(0xFF1D539B),
              child: Icon(Icons.person_pin_circle,color: Colors.white,),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tecnico()),
                );
              },
            ),
            ),
          ],

      ),
    );


  }
}