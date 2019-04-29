import 'package:camsa_login/Opiniones.dart';
import 'package:camsa_login/contratacion.dart';
import 'package:camsa_login/mis_servicios.dart';
import 'package:camsa_login/reportes.dart';
import 'package:camsa_login/ui/login_page.dart';
import 'package:camsa_login/utils/thirdscreen.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = ['Mis servicios', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final icons = [Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage, Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage, Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage,
    ];
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
                              "Opiniones",
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
                            "Reporte de problemas",
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
                            "Mis servicios",
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
      /*ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {


            Card( //<-- Card widget
    child: ListTile(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThirdSecreen()),
        );
      },
    leading: Icon(icons[index]),
    title: Text(titles[index]),
    ),
    );
    },*/
      /*Center(
         child: Column(
             mainAxisSize: MainAxisSize.max,
             children: [
        Container (
         padding: EdgeInsets.only(top: 25.0),
             child: RaisedButton(
               padding: const EdgeInsets.symmetric(horizontal:  94.0, vertical: 15.0),

               color: Colors.amber,
               textColor: Colors.white,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdSecreen()),
            );
          },
               child: Text('Mis servicios',
                 style: TextStyle(
                   fontSize: 16,

                 ),
               ),
        ),
      ),
        Container (
          padding: EdgeInsets.only(top: 25.0),
          child: RaisedButton(
             padding: const EdgeInsets.symmetric(horizontal:  75.0, vertical: 15.0),
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdSecreen()),
              );
            },
            child: Text('Contratar servicios',
              style: TextStyle(
                fontSize: 16,

              ),
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 25.0),
          child: RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal:  75.0, vertical: 15.0),
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdSecreen()),
              );
            },
            child: Text('Contratar servicios',
              style: TextStyle(
                fontSize: 16,

              ),
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 25.0),
          child: RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal:  75.0, vertical: 15.0),
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdSecreen()),
              );
            },
            child: Text('Contratar servicios',
              style: TextStyle(
                fontSize: 16,

              ),
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(top: 25.0),
          child: RaisedButton(
            padding: const EdgeInsets.symmetric(horizontal:  75.0, vertical: 15.0),
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdSecreen()),
              );
            },
            child: Text('Contratar servicios',
              style: TextStyle(
                fontSize: 16,

              ),
            ),
          ),
        ),
      ],
      ),
    ),*/ //Botones menú.
      /*ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdSecreen()),
                      );
                    },
                    leading: Icon(Icons.map,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text('Tercera vista',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text('Prueba',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      /*Icon(Icons.map,
               color: Colors.black,
               size: 25.0,*/
                    ),
                    title: Text('Prueba',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text('Prueba',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text('Prueba',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text('Prueba',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: "WorkSansBold",
                      ),
                    ),
                  ),
                ],
              ).toList(),*/
             );
  }
}