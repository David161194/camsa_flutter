import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mis_servicios extends StatelessWidget {
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

                    Expanded(
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
}

String dropdownValue = 'One';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}


