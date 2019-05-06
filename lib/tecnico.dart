import 'package:flutter/material.dart';

class Tecnico extends StatefulWidget {
  Tecnico({Key key}) : super(key: key);

  @override
  _tec createState() => new _tec();
}

class _tec extends State<Tecnico>{
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBar(
title: Text("Técnico en camino",
style: TextStyle(
color: Colors.white,
fontSize: 18.0,
fontFamily: "Sabritas",
),
),
centerTitle: true,
),
/*  endDrawer: Drawer(
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
      ),*/
      key: _scaffoldKey,
body: Center(
child: Column(
children: <Widget>[
Container(
padding: EdgeInsets.only(top: 5.0),
),
Expanded(
  flex: 8,
 child: Container(

    child: Card(

      child: InkWell(
        onTap: () {

        },

        child: Container(

          width: 300.0,
          height: 410.0,
// height: 83.0,
          child: Row(
            children: <Widget>[


              Expanded(
/* padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),*/
                flex: 3,
                child: Column (
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        // padding: EdgeInsets.only(top: 25),
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: (Color(0xFF1D539B)), width: 2.0) ,
                          image: DecorationImage(
                            image: ExactAssetImage('assets/img/tec.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                     child: Container(
                        padding: EdgeInsets.only(right: 15, left: 15, top: 10.0,bottom: 10.0),
                        child: Text(
                          """Técnico David Robles""",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: "Sabritas",
                              fontSize: 15.0,
                              color: Colors.black
                          ),

                        ),

                      ),
                    ),
                    Expanded(
                      flex:2,
                  child: Container(
                        padding: EdgeInsets.symmetric(  horizontal: 30.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: const EdgeInsets.all(0.0),
                                decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF214575),
                                ),
                                child:  IconButton(
                                  onPressed: () =>{
                                  showInSnackBar("Llamando a su técnico asignado..."),
                                  },
                                  icon: Icon(Icons.phone),
                                  iconSize: 25.0,
                                  color: Colors.white,
                                  splashColor: Colors.blueGrey,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: const EdgeInsets.all(0.0),
                                decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF214575),
                                ),
                                child:  IconButton(
                                  onPressed: () =>{
                                  showInSnackBar("Mandando mensaje a su técnico asignado..."),
                                  },
                                  icon: Icon(Icons.textsms),
                                  iconSize: 25.0,
                                  color: Colors.white,
                                  splashColor: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ],

                        ),


                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Center(
                        child:Container(
                          padding: EdgeInsets.only(top: 0.0),
                          child: Text ("Día 30/04/19 de las 9:00 a las 15:00",
                            style: TextStyle(
                              fontFamily: "Sabritas",
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
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
      elevation: 2.0,
      color: Colors.white,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


    ),
  ),
),

Expanded(
  flex: 2,
  child: Container(
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
        child: Container(
          padding: EdgeInsets.only(top: 0.0),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text("Calificación:",
                  style: TextStyle(
                      fontFamily: "Sabritas",
                      fontSize: 15.0,
                      color: Colors.black
                  ),
                ),


              ),
              Icon(Icons.star_border,
                size: 25.0,
                color: Colors.grey,
              ),
              Icon(Icons.star_border,
                size: 25.0,
                color: Colors.grey,
              ),
              Icon(Icons.star_border,
                size: 25.0,
                color: Colors.grey,
              ),
              Icon(Icons.star_border,
                size: 25.0,
                color: Colors.grey,
              ),
              Icon(Icons.star_border,
                size: 25.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
),


],

),
),



);

  }
  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus( FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar( SnackBar(
      content:  Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Color(0xFF214575),
      duration: Duration(seconds: 3),
    ));
  }

}
