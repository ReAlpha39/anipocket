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
                        prefixIcon: Icon(
                          Icons.account_circle,
                          size: 18,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 40, right: 40, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          size: 18,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 40, right: 40, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 18,
                        )),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 40.0, right: 40.0, top: 40.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                              )))
                    ])
              ]),
        ));
  }
}
