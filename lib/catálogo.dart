import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
bool check1 = false;
bool check2 = false;
bool check3 = false;
bool check4 = false;
bool check5 = false;
bool check6 = false;

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
      resizeToAvoidBottomPadding: false,
      
      body: Container(
        child: Column(
          children: <Widget>[
            ResponsiveContainer(
              heightPercent: 90.0,
              widthPercent: 100.0,
              child: Container(

                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children:  [
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/alarma.png'),
                        radius: 28.0,
                      ),
                      title: Text('Sistema de Alarma'),
                      subtitle: Text("Son capaces de advertir una situación anormal, cumpliendo así, una función disuasoria frente a posibles problemas."
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
                        backgroundImage: AssetImage('assets/img/camara.png'),
                        radius: 28.0,
                      ),
                      title: Text('Cámara'),
                      subtitle: 
                      Text(
                      "Las cámaras de vigilancia son una de las mejores opciones que tenemos en la actualidad para garantizar que un perímetro está siendo vigilado de forma permanente."
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
                        backgroundImage: AssetImage('assets/img/llama.png'),
                        radius: 28.0,
                      ),
                      title: Text('Incendio'),
                      subtitle: Text(
                        "Avisa a las personas cuando se produce un incendio en sus edificios protegiendo a los que se encuentran dentro para que evacúen el edificio"
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
                        backgroundImage: AssetImage('assets/img/electrico.png'),
                        radius: 28.0,
                      ),
                      title: Text('Cerca Eléctrica'),
                      subtitle: Text(
                        "Las cercas electrificadas siempre se encuentran conectadas al sistema de seguridad de la casa, por lo que si alguien la toca, emitirá la señal de alarma a la central de monitoreo."
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
                        backgroundImage: AssetImage('assets/img/control.png'),
                        radius: 28.0,
                      ),
                      title: Text('Control de Acceso'),
                      subtitle: Text("Son sistemas que permiten controlar una o más puertas."
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
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/Poli.png'),
                        radius: 28.0,
                      ),
                      title: Text('Servicios de Verificación'),
                      subtitle: Text("Rondines, Base y Permanencia por hora."
                      ),
                      trailing:    Checkbox(
                        value: check6,
                        onChanged: (bool value) {
                          setState(() {
                            check6= value;
                          });
                        },
                      ),
                    ),
                  ],

                ),

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
        label: Text("Ir"),

      ),
    );

  }
}