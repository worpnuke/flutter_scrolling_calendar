// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/scrolling_years_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Years Calendar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<DateTime> getHighlightedDates() {
    return List<DateTime>.generate(
      10,
      (int index) => DateTime.now().add(Duration(days: 10 * (index + 1))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 241, 241, 1),
      appBar: AppBar(
        title: const Text('Flutter Scrolling Calendar'),
      ),
      body: Center(
        child: ScrollingYearsCalendar(
          // Required parameters
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 5 * 365)),
          lastDate: DateTime.now().add(const Duration(days: 5 * 365)),
          currentDateColor: Colors.blueAccent,

          // Optional parameters
          highlightedDates: getHighlightedDates(),
          highlightedDateColor: Colors.deepOrange,
          monthNames: const <String>[
            'มกราคม',
            'กุมภาพันธ์',
            'มีนาคม',
            'เมษายน',
            'พฤษภาคม',
            'มิถุนายน',
            'กรกฎาคม ',
            'สิงหาคม',
            'กันยายน',
            'ตุลาคม',
            'พฤศจิกายน',
            'ธันวาคม',
          ],
          // monthNames: const <String>[
          //   'Jan',
          //   'Feb',
          //   'Mar',
          //   'Apr',
          //   'May',
          //   'Jun',
          //   'Jul',
          //   'Aug',
          //   'Sep',
          //   'Oct',
          //   'Nov',
          //   'Dec',
          // ],
          onMonthTap: (int year, int month) => print('Tapped $month/$year'),

          monthTitleStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
              height: 1.5
              // backgroundColor: Colors.red[700]
              ),
        ),
      ),
    );
  }
}
