import 'package:anipocket/views/photo_profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
        title: Text('Edit Profile'),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            SizedBox(height: 20),
            PhotoProfile(),
          ],
        ),
      ),
    );
  }
}