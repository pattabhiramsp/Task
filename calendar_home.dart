import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  @override
  State<Calendar> createState() => _Calendar();
}

class _Calendar extends State<Calendar> {
  final CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: SfCalendar(
              view: CalendarView.day,
              allowedViews: [
                CalendarView.day,
                CalendarView.week,
                CalendarView.month,
              ],
              viewHeaderStyle: ViewHeaderStyle(backgroundColor: Colors.white12),
              backgroundColor: Colors.white70,
              controller: _controller,
              initialDisplayDate: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }
}
