import 'package:flutter/material.dart';

class ThirdSecreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text ("Tercera vista"),
          centerTitle: true,
      ),
      endDrawer: Drawer(
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('David Robles'),
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
              title: Text('Menú'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Pagos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Opinión'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),

      ),
      backgroundColor: Color(0xFF1A2672),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped!
          },
          child: Text('Tercera vista'),
        ),
      ),

    );

  }

}