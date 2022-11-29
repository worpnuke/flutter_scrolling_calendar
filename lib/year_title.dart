import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/screen_sizes.dart';

class YearTitle extends StatelessWidget {
  const YearTitle(
    this.year,
  );

  final int year;

  String replaceThaiNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const thai = ['๐', '๑', '๒', '๓', '๔', '๕', '๖', '๗', '๘', '๙'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], thai[i]);
    }

    return input;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      year.toString() + '  ' + replaceThaiNumber((year + 543).toString()),
      style: TextStyle(
        color: Colors.red[700],
        fontSize: screenSize(context) == ScreenSizes.small ? 22.0 : 26.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
