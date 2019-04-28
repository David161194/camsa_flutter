import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reportes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text("Reporte de problemas",
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
                  content:  Text("""¿Desea solicitar los servicios de alguno de nuestros técnicos?
El costo del servicio es de 400 MXN"""),
                  actions: <Widget>[
                    FlatButton(
                      child:  Text("Aceptar"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {

                            return AlertDialog(
                              title: Text("Solicitar técnico"),
                              content:  Text("""En un momento nos comunicaremos con usted 
para concluir con la solicitud. Muchas gracias."""),
                              actions: <Widget>[
                                FlatButton(
                                  child:  Text("Aceptar"),
                                  onPressed: () {
                                   Navigator.pushNamedAndRemoveUntil(context, '/mante', (_) => false);
                                    //Navigator.popUntil(context, ModalRoute.withName('/mante'));
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