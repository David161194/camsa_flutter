import 'package:camsa_login/configuracion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/img/volante_e-02.png',
  'assets/img/volante_e-02.png',
  'assets/img/volante_e-02.png',
];
final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(

      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset('assets/img/volante_e-02.png',

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
                                   """Asesora Chloe Moretz
mail@gmail.com""",
                                   textAlign: TextAlign.left,
                                   style: TextStyle(
                                     color: Colors.black54,
                                     fontSize: 15.0,
                                     // fontFamily: "WorkSansSemiBold",
                                   ),

                                 ),

                               ),
                               Container(


                                 child: Icon(Icons.phone,
                                   size: 28.0,
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
                               """Asesora Chloe Moretz
mail@gmail.com""",
                               textAlign: TextAlign.left,
                               style: TextStyle(
                                 color: Colors.black54,
                                 fontSize: 15.0,
                                 // fontFamily: "WorkSansSemiBold",
                               ),

                             ),

                           ),
                           Container(


                             child: Icon(Icons.phone,
                                 size: 28.0,
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
          ],
        ),

      ),
    );
  }


}