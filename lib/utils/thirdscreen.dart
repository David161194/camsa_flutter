import 'package:camsa_login/ui/login_page.dart';
import 'package:flutter/material.dart';

class ThirdSecreen extends StatelessWidget {
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
    return Scaffold(

      appBar: AppBar(
        title: Text("Tercera vista"),
        centerTitle: true,
      ),
      endDrawer: Drawer(
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
              title: Text('Configuració'),
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
            )
          ],
        ),

      ),
      backgroundColor: Color(0xFF1A2672),
      body:
      ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card( //<-- Card widget
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdSecreen()),
                );
              },
              leading: Icon(icons[index]),
              title: Text(titles[index]),
            ),
          );
        },
      ),

    );
  }
}