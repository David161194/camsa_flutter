import 'package:flutter/material.dart';
bool isSwitched1 = false;
bool isSwitched2 = true;
bool isSwitched3 = false;
bool isSwitched4 = true;


class Configuracion extends StatefulWidget {
  @override
  _confi createState() => _confi();
}
class _confi extends State<Configuracion> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurción",
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
            padding: EdgeInsets.all(25.0) ,
            child: Card(

              elevation: 2.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: 300.0,
                height: 90.0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      child: Text("Cancelar cuenta:",
                        style: TextStyle(
                            fontFamily: "Sabritas",
                            fontSize: 14.0,
                            color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                     child: RaisedButton(
                        textColor: Colors.black,
                        onPressed: ()=>{
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen ()),
                        ),*/
                        },
                        color: Colors.red,
                        child:  Text(
                          "Solicitar",
                          style: TextStyle(
                              fontFamily: "Sabritas",
                              fontSize: 14.0,
                              color: Colors.white),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only( left: 25.0, bottom: 10.0) ,
            child: Row(
              children: <Widget>[
                Container(

                  child:  Text(
                    "Cancelar Notificaciones",
                    style: TextStyle(
                        fontFamily: "Sabritas",
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80.0) ,
                  child: Switch(
                    value: isSwitched1,
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreen,
                    activeColor: Colors.green,
                  ),
                ),
              ],

            ),
          ),
          Container(
            padding: EdgeInsets.only( left: 25.0, bottom: 10.0) ,
            child: Row(
              children: <Widget>[
                Container(

                  child:  Text(
                    "Cancelar Notificaciones",
                    style: TextStyle(
                        fontFamily: "Sabritas",
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80.0) ,
                  child: Switch(
                    value: isSwitched2,
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreen,
                    activeColor: Colors.green,
                  ),
                ),
              ],

            ),
          ),
          Container(
            padding: EdgeInsets.only( left: 25.0, bottom: 10.0) ,
            child: Row(
              children: <Widget>[
                Container(

                  child:  Text(
                    "Cancelar Notificaciones",
                    style: TextStyle(
                        fontFamily: "Sabritas",
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80.0) ,
                  child: Switch(
                    value: isSwitched3,
                    onChanged: (value) {
                      setState(() {
                        isSwitched3 = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreen,
                    activeColor: Colors.green,
                  ),
                ),
              ],

            ),
          ),
          Container(
            padding: EdgeInsets.only( left: 25.0, bottom: 10.0) ,
            child: Row(
              children: <Widget>[
                Container(

                  child:  Text(
                    "Cancelar Notificaciones",
                    style: TextStyle(
                        fontFamily: "Sabritas",
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80.0) ,
                  child: Switch(
                    value: isSwitched4,
                    onChanged: (value) {
                      setState(() {
                        isSwitched4 = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreen,
                    activeColor: Colors.green,
                  ),
                ),
              ],

            ),
          ),

        ],
      ),
    ),
    );
  }


}

