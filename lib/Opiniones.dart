
import 'package:camsa_login/configuracion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camsa_login/utils/bubble_indication_painter.dart';
import 'package:flutter_rating/flutter_rating.dart';

class Opiniones extends StatefulWidget {
  Opiniones({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<Opiniones>{
  //with SingleTickerProviderStateMixin
  double rating = 0.0;
  int starCount = 5;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final FocusNode myFocusNodeEmailLogin = FocusNode();
  final FocusNode myFocusNodePasswordLogin = FocusNode();

  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeName = FocusNode();
  TextEditingController loginEmailController = new TextEditingController();
  final myController = TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();
  TextEditingController signupEmailController = new TextEditingController();
  TextEditingController signupNameController = new TextEditingController();
  TextEditingController signupPasswordController = new TextEditingController();
  TextEditingController signupConfirmPasswordController = new TextEditingController();

  PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Mi Experiencia",
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
      key: _scaffoldKey,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height >= 775.0
                ? MediaQuery.of(context).size.height
                : 775.0,
            color: Color(0xFFF0F0F0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 11.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                          onTap: () {
            /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quejas()),
                           );*/

                    showDialog(
                     context: context,
                       builder: (BuildContext context) {

                       return Center(
                         child:  AlertDialog(
                           title: Text("Envia tu insatisfacción"),
                         content:  TextField(
                          maxLength: 120,
                         maxLines: 5,
                         decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: 'Ingresa tu insatisfacción'
                         ),
                         ),
                         actions: <Widget>[
                         FlatButton(
                         child:  Text("Envíar"),
                         onPressed: () {
                         /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );
                         Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);*/
                           Navigator.of(context).pop();
                         },
                         ),

                         FlatButton(
                         child:  Text("Cancelar"),
                         onPressed: () {
                         Navigator.of(context).pop();
                         },
                         ),
                         ],
                         ),
                       );

                                },
                              );
                              },
                           child: Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                              right: 20.0,
                              left: 20.0
                            ),
                            height: 44.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFF214575),
                            ),
                            child: Center(
                              child: Text("Insatisfacción",
                                  style: TextStyle(
                                    fontFamily: "Sabritas",
                                    fontSize: 16.0,
                                    color: Colors.white
                              )
                              ),
                            ),
                          ),
                        ),
                          //Container(),
                          InkWell(
                            onTap: () {
                             /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sugerencias()),
                              );*/
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {

                                  return Center(
                                    child:  AlertDialog(
                                      title: Text("Envia tu sugerencia"),
                                      content:  TextField(

                                        maxLength: 120,
                                        maxLines: 5,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Ingresa tu sugerencia'
                                        ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child:  Text("Envíar"),
                                          onPressed: () {
                                            /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );
                         Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);*/
                                            Navigator.of(context).pop();
                                          },
                                        ),

                                        FlatButton(
                                          child:  Text("Cancelar"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  );

                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 20.0,
                                  right: 20.0,
                                  left: 20.0
                              ),
                              height: 44.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Color(0xFF214575),
                              ),
                              child: Center(
                                child: Text("Sugerencia",
                                    style: TextStyle(
                                        fontFamily: "Sabritas",
                                        fontSize: 16.0,
                                        color: Colors.white
                                    )
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: _buildMenuBar(context),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (i) {
                      if (i == 0) {
                        setState(() {
                          right = Colors.white;
                          left = Colors.black;
                        });
                      } else if (i == 1) {
                        setState(() {
                          right = Colors.black;
                          left = Colors.white;
                        });
                      }
                    },
                    children: <Widget>[
                       ConstrainedBox(
                        constraints: BoxConstraints.expand(),
                        child: _buildSignIn(context),
                      ),
                      ConstrainedBox(
                        constraints:  BoxConstraints.expand(),
                        child: _buildSignUp(context),
                      ),
                    ],

                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 270.0),
                 child: Container(
                    //padding: EdgeInsets.only(left: 10.0,bottom: 20.0, top: 20),
                    child: Column(
                      children:[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(

                                  "¿Qué piensas de nuestros servicios?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),


                            ),
                            Expanded(

                              flex: 5,
                              child:  StarRating(

                                size: 25.0,
                                rating: rating,

                                color: Colors.orange,
                                borderColor: Colors.grey,
                                starCount: starCount,
                                onRatingChanged: (rating) => setState(
                                      () {
                                    this.rating = rating;
                                  },
                                ),
                              ),

                            ),
                          ],
                        ),
                        /* RaisedButton(
                 textColor: Colors.black,
                 onPressed: ()=>{
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SecondScreen ()),
                 ),
                 },
                 color: Colors.red,
                   child:  Text(
                     "Emviar",
               ),
               ),*/
                      ],

                    ),

                  ),

                ),

              ],

            ),

          ),

        ),
      ),
    );
  }


  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignInButtonPress,
                child: Text(
                  "Insatisfacciones",
                  style: TextStyle(
                      color: left,
                      fontSize: 16.0,
                      fontFamily: "Sabritas"),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignUpButtonPress,
                child: Text(
                  "Sugerencias",
                  style: TextStyle(
                      color: right,
                      fontSize: 16.0,
                      fontFamily: "Sabritas"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[

          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),

              child: Container(
                width: 300.0,
                height: 190.0,
                child: ListView(

                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      child: Text("""Mis insatisfacciones: Por medio de la presente, le hago de conocimiento 
mi inconformidad con el servicio de entrega y paquetería pues los aparatos que he adquirido en 
su tienda han llegado dañados.""",
                        style: TextStyle(
                            fontFamily: "Sabritas",
                            fontSize: 16.0,
                            color: Colors.black),
                      ),
                    ),
                  ],

              ),
            ),

          ),
          /*Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Encuestas",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: "WorkSansMedium"),
                )),
          ),*/


        ],
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 190.0,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                    child: Text("""Mis sugerencias: Recomiendo mejorar el servicio de entrega y paquetería,
pues los aparatos que he adquirido en su tienda han llegado dañados.""",
                      style: TextStyle(
                          fontFamily: "Sabritas",
                          fontSize: 16.0,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Encuestas",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: "WorkSansMedium"),
                )),
          ),*/

        ],
      ),
    );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController?.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

}
