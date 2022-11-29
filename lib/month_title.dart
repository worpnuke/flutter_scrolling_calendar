// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/dates.dart';

class MonthTitle extends StatelessWidget {
  const MonthTitle({
    @required this.month,
    this.monthNames,
    this.style = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  });

  final int month;
  final List<String> monthNames;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
          color: month == DateTime.now().month ? Colors.red[700] : Colors.white,
          border: Border.all(
            color:
                month == DateTime.now().month ? Colors.red[700] : Colors.white,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Text(
        getMonthName(month, monthNames: monthNames),
        textAlign: TextAlign.center,
        style:
            // style,
            TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: month == DateTime.now().month
                    ? Colors.white
                    : Colors.grey[400],
                height: 1.5
                // backgroundColor: Colors.red[700]
                ),
        maxLines: 1,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
    );
  }
}
