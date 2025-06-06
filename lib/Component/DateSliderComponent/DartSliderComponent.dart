library horizontal_calendar;

import 'package:flutter/material.dart';
import 'date_utils.dart';

typedef OnDateSelected(date);

class HorizontalCalendar extends StatefulWidget {
  final DateTime date;
  final DateTime initialDate;
  final DateTime lastDate;
  final Color textColor;
  final Color backgroundColor;
  final Color selectedColor;
  final OnDateSelected onDateSelected;

  HorizontalCalendar({
    Key key,
    @required this.date,
    this.initialDate,
    this.lastDate,
    this.textColor,
    this.backgroundColor,
    this.selectedColor,
    @required this.onDateSelected,
  }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<HorizontalCalendar> {
  DateTime _startDate;
  DateTime selecteDate;

  @override
  void initState() {
    super.initState();

    selecteDate = widget.date;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    _startDate = selecteDate.subtract(Duration(days: 3));

    return Container(
      height: width * 0.1428,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ListView.builder(
            itemCount: 7,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              DateTime _date = _startDate.add(Duration(days: index));
              int diffDays = _date.difference(selecteDate).inDays;
              int checkPastDate = _date.difference(DateTime.now()).inDays;

              return Container(
                width: (width - 10) * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: diffDays != 0
                      ? widget.backgroundColor ?? Colors.white
                      : widget.selectedColor ?? Colors.blue,
                ),
                alignment: Alignment.center,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  onPressed: () {
                    if (checkPastDate >= 0) {
                      widget.onDateSelected(Utils.getDate(_date));
                      setState(() {
                        selecteDate = _startDate.add(Duration(days: index));
                        _startDate = _startDate.add(Duration(days: index));
                      });
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        Utils.getDayOfWeek(_date),
                        style: TextStyle(
                          color: diffDays != 0
                              ? checkPastDate >= 0
                                  ? widget.textColor ?? Colors.black45
                                  : Colors.grey[300]
                              : Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        Utils.getDayOfMonth(_date),
                        style: TextStyle(
                          color: diffDays != 0
                              ? checkPastDate >= 0
                                  ? widget.textColor ?? Colors.black45
                                  : Colors.grey[300]
                              : Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              icon: Icon(
                Icons.calendar_today,
                color: widget.textColor ?? Colors.black45,
                size: 20.0,
              ),
              onPressed: () async {
                DateTime date = await selectDate();
                widget.onDateSelected(Utils.getDate(date));
                setState(() => selecteDate = date);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<DateTime> selectDate() async {
    return await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.day,
      initialDate: selecteDate,
      firstDate:
          widget.initialDate ?? DateTime.now().subtract(Duration(days: 30)),
      lastDate: widget.lastDate ?? DateTime.now().add(Duration(days: 30)),
    );
  }
}
