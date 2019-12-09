import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AniPocket', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Miftah"),
              accountEmail: Text("muhammadmiftah998@gmail.com"),
              decoration: BoxDecoration(color: Colors.black87),
            ),
            ListTile(
              title: Text("First Page"),
              leading: Icon(Icons.home, color: Colors.redAccent[700]),
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}

