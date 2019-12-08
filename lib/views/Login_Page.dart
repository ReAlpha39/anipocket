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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20, left: 40, right: 40, bottom: 0
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20, left: 40, right: 40, bottom: 0
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                        Icons.lock,
                        size: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 40
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen[400],
                          borderRadius: BorderRadius.circular(60)
                        ),
                        child: Text("LOGIN",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black),),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      '- OR -',
                      style: TextStyle(
                        fontWeight: FontWeight.w500)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Sign in With'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('Assets/FB.jpg'))
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0)
                          ],
                          image: DecorationImage(
                              image: AssetImage('Assets/google.jpg'))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}