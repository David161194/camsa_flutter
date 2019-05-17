import 'package:camsa_login/cat%C3%A1logo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:camsa_login/configuracion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imgList = [
  'assets/img/volante_e-02.png',
  'assets/img/volante_e-03.png',
  'assets/img/volante_e-04.png',
];
final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(

      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset(i,

            fit: BoxFit.fill,
            width: 1000,

          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}


class Contratacion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    _ws() async {
      const url = 'https://wa.me/+5215548441881';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _callMe() async {
    // Android
    const uri = 'tel:+521 55 37 01 34 31';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      // iOS
      const uri = 'tel:521-55-19-18-99-54';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
  }

    final CarouselSlider manualCarouselDemo = CarouselSlider(
      items: child,
      autoPlay: false,
      enlargeCenterPage: true,
      viewportFraction: 0.9,
      aspectRatio: 2.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Contratación de servicios",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
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
          children: [
            Container(
              /* height: 220.0,
               padding: EdgeInsets.only(bottom: 25.0),
               decoration: BoxDecoration(
                 border: Border.all(color: (Colors.amber), width: 2.0) ,
                 image: DecorationImage(
                   image: ExactAssetImage('assets/img/volante_e-02.png'),
                   fit: BoxFit.fitWidth,
                 ),
               ),*/
              child: manualCarouselDemo,
            ),


            Container(
              padding: EdgeInsets.only(top: 25),
              /*child: ListView(
                  children:  [
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/chloe.jpg'),
                        radius: 28.0,
                      ),
                      title: Text('Asesora Chloe Moretz'),
                      subtitle: Text("correo@mail.com"
                      ),
                      trailing: Icon(
                        Icons.phone,
                        size: 28.0,
                      ),
                    ),
                    Divider(
                      height: 2.0,
                    ),

                  ],
                ),*/
              child: Card(

                child: InkWell(
                  onTap: () {

                  },

                  child: Container(
                    padding: EdgeInsets.only(left: 5.0),
                    width: 300.0,
                    height: 120.0,
                    // height: 83.0,
                    child: Row(
                      children: <Widget>[
                        Expanded (
                          flex:3,
                          child: GestureDetector (
                            onTap: (){

                            },
                            child:  Container(
                              width: 100.0,
                              height: 100.0,
                              padding: EdgeInsets.only(left: 10.0),
                              child: Container(

                                //child: Image.asset("assets/img/chloe.jpg"),

                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: ExactAssetImage("assets/img/icono2.jpg"),
                                  ),
                                ),

                              ),


                            ),
                          ),
                        ),

                        Expanded(
                          /* padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),*/
                          flex: 5,
                          child: Column (
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                child: Text(
                                  """Asesora: Mariana Santos P.
Mdo@central.com.mx""",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    // fontFamily: "WorkSansSemiBold",
                                  ),

                                ),

                              ),
                              Row(
                                children: <Widget>[

                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                                    child:  InkWell(
                                    onTap:(){_callMe();},
                                    child: Icon(
                                      Icons.phone,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child:  InkWell(
                                    onTap:(){_ws();},
                                    child: Icon
                                    (IconData(0xe900, fontFamily: 'whats',),
                                      size: 28.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  )
                                ],
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


            Card(

              child: InkWell(
                onTap: () {

                },

                child: Container(
                  padding: EdgeInsets.only(left: 5.0),
                  width: 300.0,
                  height: 120.0,
                  // height: 83.0,
                  child: Row(
                    children: <Widget>[
                      Expanded (
                        flex:3,
                        child:  Container(
                          width: 100.0,
                          height: 100.0,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Container(
                            //child: Image.asset("assets/img/chloe.jpg"),

                            decoration: new BoxDecoration(

                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: ExactAssetImage("assets/img/icono1.jpg"),
                              ),
                            ),

                          ),


                        ),
                      ),

                      Expanded(
                        /* padding: EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 25.0, right: 25.0),*/
                        flex: 5,
                        child: Column (
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              child: Text(
                                """Asesora: Chloe Moretz
Cmo@central.com.mx""",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15.0,
                                  // fontFamily: "WorkSansSemiBold",
                                ),

                              ),

                            ),
                            Row(
                              children: <Widget>[

                               Container(
                                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                                    child:  InkWell(
                                    onTap:(){_callMe();},
                                    child: Icon(
                                      Icons.phone,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    child:  InkWell(
                                    onTap:(){_ws();},
                                    child: Icon
                                    (IconData(0xe900, fontFamily: 'whats',),
                                      size: 28.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  )
                              ],
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
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF1D539B),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Catalogo()),
          );
        },
        icon: Icon(Icons.playlist_add),
        label: Text("Catálogo"),

      ),
    );
  }
}
