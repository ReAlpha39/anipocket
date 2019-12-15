import 'package:flutter/material.dart';

class SeasonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text(
          'This Season',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){},
      ),
    );
  }
}