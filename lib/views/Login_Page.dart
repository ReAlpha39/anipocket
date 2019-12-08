import 'package:anipocket/widget/Icon_Apps.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: IconApps(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                child: Text(
                  "AniPocket",
                  style: TextStyle(fontSize: 30)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}