import 'package:flutter/material.dart';

import 'photo_profile.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
        title: Text('User Profile'),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            SizedBox(height: 50),
            PhotoProfile(),
          ],
        ),
      ),
    );
  }
}