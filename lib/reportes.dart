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
          title: Text("Centro de ayuda",
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
    'Encuentra respuestas a las preguntas más comunes.',
    <MyTile>[
    ],
  ),
  MyTile(
    '¿Cómo puedo actualizar la información en mi cuenta?',

    <MyTile>[
      MyTile('Puede actualizar la información de la cuenta iniciando sesión en MyCamsa.com y seleccionando la pestaña Mi cuenta.'),
    ],
  ),
  MyTile(
    '¿Puedo ver mi historial de alarmas en mi cuenta?',
    <MyTile>[
      MyTile('Puede ver toda la actividad de las alarmas y averiguar a qué hora se activó su alarma durante los 30 días anteriores (13 meses para los antiguos clientes de Broadview y Business Reporting) ingresando a su cuenta MyCamsa.com y haciendo clic en la página Actividad de alarma . Si tiene preguntas sobre la descripción de un evento en particular en su historial de alarmas, consulte la Clave de actividad disponible en la parte superior de la página.'),
    ],
  ),
  MyTile(
    '¿Qué debo hacer si mi técnico no se presenta según lo programado?',
    <MyTile>[
      MyTile('Su tiempo es importante y nuestros técnicos se esfuerzan por llegar puntualmente según lo programado. Si faltamos a una cita y no lo hemos contactado, llame al número de servicio residencial o comercial que se encuentra en nuestra página.'),
    ],
  ),
  MyTile(
    '¿Cómo puedo cancelar mi servicio?',
    <MyTile>[
      MyTile('¿Cómo podemos cambiar de opinión? Su seguridad es siempre lo más importante para nosotros y nunca queremos que ninguna casa quede sin protección. Por razones de seguridad y para su protección, la cancelación de sus servicios de alarma no se puede completar en línea, es necesario llamar.'),
    ],
  ),
  MyTile(
    '¿Cómo puedo cambiar mi dirección de facturación mientras mantengo mi dirección de servicio?',
    <MyTile>[
      MyTile('Para cambiar su dirección de facturación, inicie sesión en su cuenta MyCamsa.com , haga clic en la pestaña Mi cuenta ubicada en la página de información general y luego haga clic en  Información de facturación  en el menú de la izquierda. Este cambio no afectará su dirección de servicio. La actualización de la nueva dirección de facturación puede demorar hasta un ciclo de facturación, por lo que debe continuar buscando el próximo extracto en su antigua dirección de facturación.'),
    ],
  ),
  MyTile(
    '¿Cómo puedo modificar mi servicio?',
    <MyTile>[
      MyTile('Ya sea que desee realizar cambios en su seguridad o que busque mejores opciones de precios, podemos adaptarnos a sus necesidades y su presupuesto. '),
    ],
  ),
  MyTile(
    '¿Por qué no puedo ver mi historial de pagos?',
    <MyTile>[
      MyTile('Un historial de pagos reducido, en blanco o parcial podría ser el resultado de tener una cuenta nueva, ya que el historial de pagos no estará disponible hasta que las cuentas tengan al menos 30 días de antigüedad o debido a las recientes mejoras realizadas en el sistema de facturación de Camsa, que pueden haber afectado la disponibilidad. del historial de pagos de su cuenta. Estos cambios no tienen efecto en los montos de facturación, pero sí evitan que el portal de cuentas de MyCamsa.com los muestre para algunos clientes. '),
    ],
  ),
  MyTile(
    'Una vez que está instalado, ¿es difícil agregar dispositivos adicionales al sistema?',
    <MyTile>[
      MyTile('De ningún modo. Algunos dispositivos, como los módulos de encendido / apagado de lámparas o pequeños electrodomésticos, pueden enchufarse simplemente a los enchufes existentes. Otros requieren un poco más de habilidad y pueden necesitar la ayuda de un electricista profesional. '),
    ],
  ),
];