import 'package:camsa_login/contratacion.dart' as prefix0;
import 'package:camsa_login/contratacion.dart';
import 'package:flutter/material.dart';

bool check1 = false;
bool check2 = false;
bool check3 = false;
bool check4 = false;
bool check5 = false;

class Catalogo extends StatefulWidget {
  @override
  _cata createState() => _cata();
}
class _cata extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Catálogo de servicios",
        style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontFamily: "Sabritas",
    ),
    ),
    centerTitle: true,
    ),
      body: Container(
        child: Column(
          children: <Widget>[

             Container(
        height: 500.0,
                padding: EdgeInsets.only(top: 25),
                child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                  children:  [
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Logoof.png'),
                        radius: 28.0,
                      ),
                      title: Text('Sistema de alarma'),
                      subtitle: Text("Dispositivos inteligentes instalados en tu hogar que te protegerán ante cualquier intrusión."
                      ),
                      trailing:    Checkbox(
                        value: check1,
                        onChanged: (bool value) {
                          setState(() {
                            check1= value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Logoof.png'),
                        radius: 28.0,
                      ),
                      title: Text('Cámara'),
                      subtitle: Text("Dispositivos inteligentes instalados en tu hogar que te protegerán ante cualquier intrusión."
                      ),
                      trailing:    Checkbox(
                        value: check2,
                        onChanged: (bool value) {
                          setState(() {
                            check2= value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Logoof.png'),
                        radius: 28.0,
                      ),
                      title: Text('Incendio'),
                      subtitle: Text("Dispositivos inteligentes instalados en tu hogar que te protegerán ante cualquier intrusión."
                      ),
                      trailing:    Checkbox(
                        value: check3,
                        onChanged: (bool value) {
                          setState(() {
                            check3= value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Logoof.png'),
                        radius: 28.0,
                      ),
                      title: Text('Cerca Eléctrica'),
                      subtitle: Text("Dispositivos inteligentes instalados en tu hogar que te protegerán ante cualquier intrusión."
                      ),
                      trailing:    Checkbox(
                        value: check4,
                        onChanged: (bool value) {
                          setState(() {
                            check4= value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Logoof.png'),
                        radius: 28.0,
                      ),
                      title: Text('Control de acceso'),
                      subtitle: Text("Dispositivos inteligentes instalados en tu hogar que te protegerán ante cualquier intrusión."
                      ),
                      trailing:    Checkbox(
                        value: check5,
                        onChanged: (bool value) {
                          setState(() {
                            check5= value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                  ],
                ),

             ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF1D539B),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {

              return AlertDialog(
                title: Text("Contratacion de servicios"),
                content:  Text("""¿Está seguro de contratar los servicios seleccionados?
En un momento nos comunicaremos con usted para concluir con la solicitud. Muchas gracias."""),
                actions: <Widget>[
                  FlatButton(
                    child:  Text("Aceptar"),
                    onPressed: () {
                      //Navigator.pushNamedAndRemoveUntil(context, '/second', (_) => false);
                      // Navigator.popUntil(context, ModalRoute.withName('/mante'));
                      // Navigator.of(context).pushReplacementNamed('/mante');
                      //Navigator.popAndPushNamed(context, '/mante');
                      Navigator.of(context).pushNamedAndRemoveUntil('/contra', ModalRoute.withName('/second'));

                    },
                  ),

                  FlatButton(
                    child:  Text("Cancelar"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.send),
        label: Text("Enviar"),

      ),
    );

  }
  }