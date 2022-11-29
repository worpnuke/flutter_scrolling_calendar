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
          color: Colors.red[700],
          border: Border.all(
            color: Colors.red[700],
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Text(
        getMonthName(month, monthNames: monthNames),
        textAlign: TextAlign.center,
        style: style,
        maxLines: 1,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
    );
  }
}
