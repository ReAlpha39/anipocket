import 'package:anipocket/widget/Icon_Apps.dart';
import 'package:flutter/material.dart';

class FirstDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Assets/BACKGROUND.jpg'), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconApps(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: Text(
                    "AniPocket",
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 5.0, top: 300.0),
                        child: Container(
                            alignment: Alignment.center,
                            height: 45.0,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[900],
                                borderRadius: BorderRadius.circular(60.0)),
                            child: Text("Sign In",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white))),
                      ),
                    ),
                    Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 10.0, top: 300.0),
                        child: Container(
                            alignment: Alignment.center,
                            height: 45.0,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[800],
                                borderRadius: BorderRadius.circular(60.0)),
                            child: Text("Register",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white))),
                      ),
                    ),
                ]),
                ]),
          
        ),
        ));
  }
}
