import 'package:anipocket/widget/Icon_Apps.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: IconApps(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                child: Text(
                  "AniPocket",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 40, right: 40, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'User Name',
                      ),
                ),
              ),
            ]),
      ),
    );
  }
}