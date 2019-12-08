import 'package:anipocket/views/photo_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            Stack(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(right: 100, left: 100, top: 10),
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.camera,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Username'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Status'),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 50.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        child: new Text("Save",
                            style: new TextStyle(
                                fontSize: 17.0, color: Colors.black))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
