

/*class Mis_servicios extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mis servicios",
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
                accountName: Text('Antonio'),
                accountEmail: Text('alonso1611@hotmail.com'),
                currentAccountPicture:
                Image(
                    width: 500.0,
                    height: 300.0,
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/Logo2.png')),
                decoration: BoxDecoration(color: Color(0xFF1D539B)),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Configuración'),
                onTap: () {
                  Navigator.pop(context);
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
        body: Container(

          child: Column(
            children: <Widget>[

              Container(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: <Widget>[

                   /* Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 35.0,
                        child: Text("Cuenta",

                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontFamily: "Sabritas",
                          ),
                        ),
                      ),

                    ),*/

                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Color(0xFF1D539B),
                        width: 35.0,
                        height: 35.0,
                        child:  MyStatefulWidget(),
                      ),
                    ),

                  ],

                ),
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 35.0,
                        child: Text("Monitoreo",

                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontFamily: "Sabritas",
                          ),
                        ),
                      ),

                    ),

                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 35.0,
                        child:  MyStatefulWidget(),
                      ),
                    ),

                  ],

                ),
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 20.0,
                       child: RaisedButton(
                          textColor: Colors.black,
                          onPressed: ()=>{
                          },
                          color: Colors.white,
                          child:  Text(
                            "Adicional 1",
                          ),
                        ),
                      ),

                    ),

                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 20.0,
                        child: RaisedButton(
                          textColor: Colors.black,
                          onPressed: ()=>{
                          },
                          color: Colors.white,
                          child:  Text(
                            "Adicional 2",
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 20.0,
                        child: RaisedButton(
                          textColor: Colors.black,
                          onPressed: ()=>{
                          },
                          color: Colors.white,
                          child:  Text(
                            "Adicional 3",
                          ),
                        ),
                      ),
                    ),

                  ],

                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text("Facturas pendientes",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontFamily: "Sabritas",
                      ),
                        ),
                    Container(
                      padding: EdgeInsets.only(top:15.0),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                        child: ListView(
                          children:  [
                            Divider(
                              height: 2.0,
                            ),
                            ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),
                            ListTile(

                              title: Text('Servicio 2'),
                              subtitle: Text("Factura 2"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),
                            ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),  ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),  ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),  ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
                              ),
                            ),
                            Divider(
                              height: 2.0,
                            ),  ListTile(

                              title: Text('Servicio 1'),
                              subtitle: Text("Factura 1"
                              ),
                              trailing: Icon(
                                Icons.file_download,
                                size: 28.0,
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
            ],

          ),

        ),

      ),

    );
  }
}*/

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


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
            Icon(Icons.account_circle,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Cuenta",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.account_circle,
              color: Colors.white,
            ),

            SizedBox(width: 10),
            Text(
              "Cuenta 1",
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
    color: Colors.amberAccent,
    fontSize: 18.0,
    fontFamily: "Sabritas",
  ),
  );
  DropdownButton _itemDown2() => DropdownButton<String>(
    items: [

      DropdownMenuItem(
        value: "1",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.account_circle,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Monitoreo",
            ),
          ],
        ),
      ),

      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.account_circle,
              color: Colors.white,
            ),

            SizedBox(width: 10),
            Text(
              "Monitoreo 1",
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
      color: Colors.amberAccent,
      fontSize: 18.0,
      fontFamily: "Sabritas",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis servicios",
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
              accountName: Text('Antonio'),
              accountEmail: Text('alonso1611@hotmail.com'),
              currentAccountPicture:
              Image(
                  width: 500.0,
                  height: 300.0,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/img/Logo2.png')),
              decoration: BoxDecoration(color: Color(0xFF1D539B)),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Configuración'),
              onTap: () {
                Navigator.pop(context);
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
              height: 40,
            ),
            Container(

              padding: EdgeInsets.symmetric(horizontal: 50),
              color: Color(0xFF1D539B),
              child: _itemDown(),
            ),
            Container(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 36),
              color: Color(0xFF1D539B),
              child: _itemDown2(),
            ),
            Container(
              height: 40,
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
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 5.0,
                        right: 5.0,
                        left: 5.0
                    ),
                    height: 44.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF214575),
                    ),
                    child: Center(
                      child: Text("Adicional 1",
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
                    /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sugerencias()),
                              );*/
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 5.0,
                        right: 5.0,
                        left: 5.0,
                    ),
                    height: 44.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF214575),
                    ),
                    child: Center(
                      child: Text("Adicional 2",
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
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 5.0,
                        right: 5.0,
                        left: 5.0,
                    ),
                    height: 44.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF214575),
                    ),
                    child: Center(
                      child: Text("Adicional 3",
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
            Container(
              padding: EdgeInsets.only(top:5.0) ,
              child: Column(
                children: <Widget>[
                  Text("Facturas pendientes",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontFamily: "Sabritas",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:15.0),
                    child: SizedBox(
                      height: 200,
                      width: 300,
                      child: ListView(
                        children:  [
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Servicio 2'),
                            subtitle: Text("Factura 2"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),
                          ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),  ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),  ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),  ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
                            ),
                          ),
                          Divider(
                            height: 2.0,
                          ),  ListTile(

                            title: Text('Servicio 1'),
                            subtitle: Text("Factura 1"
                            ),
                            trailing: Icon(
                              Icons.file_download,
                              size: 28.0,
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


