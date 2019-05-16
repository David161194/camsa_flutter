import 'package:camsa_login/configuracion.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class Mis_servicios extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<Mis_servicios> {
  var _value = "1";

  DropdownButton _itemDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "42002088",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            SizedBox(width: 10),
            Text(
              "40001254",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            SizedBox(width: 10),
            Text(
              "40035401",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "42002291",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            SizedBox(width: 10),
            Text(
              "42002295",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "42002297",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value = value;
      });
    },

    value: _value,
    elevation: 2,

  style: TextStyle(
    color: Colors.black54,
    fontSize: 18.0,
    fontFamily: "Sabritas",
  ),
  );

  @override
  Widget build(BuildContext context) {


    _launchURL() async {
      const url = 'https://drive.google.com/file/d/1r3ikL8cvFo6tVSlqSFPqynMuK0DRIEgJ/view?usp=sharing';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Cuenta",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Centro Automotriz Futurama S.A. de C.V.'),
              accountEmail: Text('hcarreras@futuramatiresmx.com'),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
          children: <Widget>[
            Container(
              height: 25,
            ),

            Container (

              child: Row(
                children: <Widget>[
                  Container(
                   padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text("Mis cuentas:",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontFamily: "Sabritas",
                        ),

                      ),
                    ),
                 Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      child: _itemDown(),
                    ),


                ],
              ),
            ),

            Container(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text("Monitoreo",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  fontFamily: "Sabritas",
                ),

              ),
            ),
            Card(
              elevation: 2.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: 300.0,
                height: 60.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      child: Text("Periodo             2 - 04/2018",
                        style: TextStyle(
                            fontFamily: "Sabritas",
                            fontSize: 14.0,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  InkWell(

                    onTap: () {
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quejas()),
                           );*/
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5.0,

                      ),
                      height: 44.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF214575),
                      ),
                      child: Center(
                        child: Text("Servicios",
                            style: TextStyle(
                                fontFamily: "Sabritas",
                                fontSize: 14.0,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sugerencias()),
                              );*/
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 5.0,


                      ),
                      height: 44.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D539B),
                      ),
                      child: Center(
                        child: Text("Mantenimientos",
                            style: TextStyle(
                                fontFamily: "Sabritas",
                                fontSize: 14.0,
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
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 5.0,

                      ),
                      height: 44.0,
                      width: 97.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF214575),
                      ),
                      child: Center(
                        child: Text("Instalaciones",
                            style: TextStyle(
                                fontFamily: "Sabritas",
                                fontSize: 14.0,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
             // padding: EdgeInsets.symmetric(vertical:3.0) ,
             child: Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 110.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: Text("",
                          style: TextStyle(
                              fontFamily: "Sabritas",
                              fontSize: 14.0,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top:5.0) ,
              child: Column(
                children: <Widget>[
                  Text("Mis facturas",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontFamily: "Sabritas",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:15.0),
                    child: SizedBox(
                      height: 130,
                      width: 300,
                      child: ListView(
                        children:  [
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Servicio facturado 2 - 05/2019'),
                            subtitle: Text("16/05/2019"
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                              onPressed:  _launchURL,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Instalación 2 - 04/2018'),
                            subtitle: Text("29/04/2019"
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                              onPressed:  _launchURL,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Servicio 2 - 04/2018'),
                            subtitle: Text("29/04/2019"
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                              onPressed:  _launchURL,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                        ],
                      ),

                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 5)
          ],
        ),),

      ),
    );
  }
}


