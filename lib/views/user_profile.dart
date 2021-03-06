import 'package:anipocket/widget/box_info.dart';
import 'package:flutter/material.dart';

import 'edit_profile.dart';
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
            SizedBox(height: 30),
            PhotoProfile(),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'Mawang',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            BoxInfo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditProfile();
          }));
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
