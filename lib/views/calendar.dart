import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;

@override
void initState() {
  super.initState();
  _controller = CalendarController();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}