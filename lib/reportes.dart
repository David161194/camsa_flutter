import 'package:camsa_login/configuracion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reportes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text("Guía de Soluciones",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: "Sabritas",
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back
            ),
            onPressed: () =>{
            Navigator.popUntil(context, ModalRoute.withName( '/second')),
            },

          ),
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
            //Navigator.of(context).pushNamedAndRemoveUntil('/confi', ModalRoute.withName('/mante'));

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
        body:  Container(
          child: ListView.builder(

            itemBuilder: (BuildContext context, int index) {
              return  StuffInTiles(listOfTiles[index]);
            },
            itemCount: listOfTiles.length,
          ),

        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFF1D539B),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {

                return AlertDialog(
                  title: Text("Solicitar técnico"),
                  content:  Text("""¿Deseas solicitar los servicios de alguno de nuestros técnicos?
Es posible que se agregue un monto extra por el servicio."""),
                  actions: <Widget>[
                    FlatButton(
                      child:  Text("Aceptar"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {

                            return AlertDialog(
                              title: Text("Solicitar técnico"),
                              content:  Text("""En un momento nos comunicaremos contigo
para concluir con la solicitud. Muchas gracias."""),
                              actions: <Widget>[
                                FlatButton(
                                  child:  Text("Aceptar"),
                                  onPressed: () {
                                  //  Navigator.pushNamedAndRemoveUntil(context, '/second', (_) => false);
                                    // Navigator.popUntil(context, ModalRoute.withName('/mante'));
                                    // Navigator.of(context).pushReplacementNamed('/mante');
                                    //Navigator.popAndPushNamed(context, '/mante');
                                    Navigator.of(context).pushNamedAndRemoveUntil('/mante', ModalRoute.withName('/second'));

                                   /* Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SecondScreen(),
                                        ));*/
                                  },
                                ),

                                FlatButton(
                                  child:  Text("Cancelar"),
                                  onPressed: () {
                                    Navigator.of(context).pushNamedAndRemoveUntil('/mante', ModalRoute.withName('/second'));
                                  },
                                ),
                              ],
                            );
                          },
                        );
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
          icon: Icon(Icons.account_box),
          label: Text("Solicitar Tecnico"),

        ),

      ),

    );
  }
}
class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return  ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          // onLongPress: () => print("long press"),
          //onTap: () => print("tap"),
          selected: true,

          title:  Text(t.title,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),));

    return  ExpansionTile(
      key:  PageStorageKey<int>(3),
      title:  Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  MyTile(
    'FAQ',
    <MyTile>[
    ],
  ),
  MyTile(
    '¿Cómo solicitar un servicio?',

    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
  MyTile(
    'Neque porro quisquam est qui',
    <MyTile>[
      MyTile('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..'),
    ],
  ),
];