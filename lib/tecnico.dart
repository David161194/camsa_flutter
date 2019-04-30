import 'package:flutter/material.dart';

class Tecnico extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Técnico",
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
    body: Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50.0),
          ),
          Container(

           child: Card(

              child: InkWell(
                onTap: () {

                },

                child: Container(
                  padding: EdgeInsets.only(left: 5.0),
                  width: 300.0,
                  height: 400.0,
                  // height: 83.0,
                  child: Row(
                    children: <Widget>[


                      Expanded(
                        /* padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),*/
                        flex: 5,
                        child: Column (
                          children: <Widget>[
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                //border: Border.all(color: (Color(0xFF1D539B)), width: 2.0) ,
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/img/tec.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 15, left: 15, top: 15),
                              child: Text(
                                """Técnico Chloe Moretz""",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15.0,
                                  // fontFamily: "WorkSansSemiBold",
                                ),

                              ),

                            ),
                            Container(
                              padding: EdgeInsets.symmetric( vertical:5, horizontal: 85.0),
                              child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 5,
                                child:  Icon(Icons.phone,
                                    size: 25.0,
                                  ),
                                ),

                                Expanded(
                                  flex: 5,
                                  child:  Icon(Icons.textsms,
                                    size: 25.0,
                                  ),
                                ),
                              ],

                              ),


                            ),
                            Container(
                             child: Text ("30/04/19 a las 15:00 hrs"),
                            ),
                          ],


                        ),





                      ),

                    ],
                  ),

                ),
              ),
              elevation: 10.0,
              color: Colors.white,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),


            ),
          ),
        ],
      ),
    ),



    );
  }


}