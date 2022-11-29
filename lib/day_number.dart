import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/screen_sizes.dart';

class DayNumber extends StatelessWidget {
  const DayNumber({
    @required this.day,
    this.color,
  });

  final int day;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final double size = getDayNumberSize(context);

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: color != null
          ? ((color == Colors.redAccent)
              ? null
              : BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(size / 2),
                ))
          : null,
      child: Text(
        day < 1 ? '' : day.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          // color: color != null ? Colors.white : Colors.black87,
          color: color != null
              ? ((color == Colors.redAccent) ? Colors.redAccent : Colors.white)
              : Colors.black87,
          // fontSize: screenSize(context) == ScreenSizes.small ? 8.0 : 10.0,
          fontSize: screenSize(context) == ScreenSizes.small ? 10.0 : 12.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
