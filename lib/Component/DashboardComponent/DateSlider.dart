import 'package:flutter/material.dart';
import 'package:jiffi/Component/DateSliderComponent/DartSliderComponent.dart';

class DateSlider extends StatelessWidget {
  DateSlider({Key key}) : super(key: key);

  dynamic selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        child: HorizontalCalendar(
          date: DateTime.now(),
          textColor: Colors.white,
          backgroundColor: Color(0xff000022),
          selectedColor: Color(0xffA87CF9),
          onDateSelected: (date) => print(
            date.toString(),
          ),
        ),
      ),
    );
  }
}
