import 'package:camsa_login/ui/login_page.dart';
import 'package:camsa_login/utils/thirdscreen.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = ['Mis servicios', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'
    ];

    final icons = [Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage, Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage, Icons.filter_vintage, Icons.filter_vintage,
    Icons.filter_vintage,
    ];
    //Navigator.pop(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Menú principal"),
        centerTitle: true,
        leading: new Container(),
      ), endDrawer: Drawer(
      elevation: 20.0,

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
            decoration: BoxDecoration(color: Color(0xFF1A2672)),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          )
        ],
      ),

    ),

      backgroundColor: Color(0xFFF0F0F0),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0),

            ),

                Card(
                  child: InkWell(
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdSecreen()),
                    );
                  },
                    child: Container(
                      width: 320.0,
                      height: 140.0,
                      // height: 83.0,
                      child: Column(
                        children: <Widget>[
                          Padding (
                            padding: EdgeInsets.only(
                                top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                            child:  Container(
                              width: 320.0,
                              height: 104.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/img/cafe.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),
                            child: Text(
                              "Opiniones",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: "WorkSansSemiBold",
                              ),

                            ),

                          ),

                        ],
                      ),
                    ),
                ),
                  elevation: 20.0,
                  color: Colors.white,
                 // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


                ),
            Container(
              padding: EdgeInsets.only(top: 10.0),

            ),

            Card(

              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdSecreen()),
                  );
                },
                child: Container(
                  width: 320.0,
                  height: 140.0,
                  // height: 83.0,
                  child: Column(
                    children: <Widget>[
                      Padding (
                        padding: EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                        child:  Container(
                          width: 320.0,
                          height: 104.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('assets/img/cafe.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),
                        child: Text(
                          "Reporte de problemas",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "WorkSansSemiBold",
                          ),

                        ),

                      ),

                    ],
                  ),
                ),
              ),
              elevation: 2.0,
              color: Colors.white,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),

            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),

            ),

            Card(

              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdSecreen()),
                  );
                },
                child: Container(
                  width: 320.0,
                  height: 140.0,
                  // height: 83.0,
                  child: Column(
                    children: <Widget>[
                      Padding (
                        padding: EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                        child:  Container(
                          width: 320.0,
                          height: 104.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('assets/img/cafe.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),
                        child: Text(
                          "Contratación de servicios",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "WorkSansSemiBold",
                          ),

                        ),

                      ),

                    ],
                  ),
                ),
              ),
              elevation: 2.0,
              color: Colors.white,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),

            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),

            ),

            Card(

              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdSecreen()),
                  );
                },
                child: Container(
                  width: 320.0,
                  height: 200.0,
                  // height: 83.0,
                  child: Column(
                    children: <Widget>[
                      Padding (
                        padding: EdgeInsets.only(
                            top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                        child:  Container(
                          width: 320.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('assets/img/cafe.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),
                        child: Text(
                          "Mis servicios",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "WorkSansSemiBold",
                          ),

                        ),

                      ),

                    ],
                  ),
                ),
              ),
              elevation: 2.0,
              color: Colors.white,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),

            ),
            Container(
              padding: EdgeInsets.only(bottom: 10.0),

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