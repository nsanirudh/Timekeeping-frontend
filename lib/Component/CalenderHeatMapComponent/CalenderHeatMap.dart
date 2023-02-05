import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:jiffi/Constants/constants.dart';


class HeatMapCal extends StatelessWidget {
  const HeatMapCal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var today = DateTime.now();
    var today_plus = DateTime(today.year, today.month + 4, 0);
    
    
    return Center(
      // constraints: BoxConstraints(maxHeight: height/2, maxWidth: width),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          constraints: BoxConstraints(maxHeight: 350, maxWidth: width),
          decoration: BoxDecoration(
              color: Constants.CalCardCol,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: HeatMapCalendar(
              // startDate: today,
              // endDate: today_plus,
              datasets: {
                DateTime(2023, 1, 2): 2,
                DateTime(2023, 1, 8): 3,
                DateTime(2023, 1, 16): 7,
                DateTime(2023, 1, 23): 3,
                DateTime(2023, 1, 19): 3,
                DateTime(2023, 1, 21): 1,
                DateTime(2023, 1, 25): 7,
                DateTime(2023, 1, 26): 4,
                DateTime(2023, 1, 15): 7,
                DateTime(2023, 1, 21): 5,
                DateTime(2023, 1, 18): 4,
                DateTime(2023, 1, 7): 7,
                DateTime(2023, 1, 8): 6,
                DateTime(2023, 1, 9): 1,
                DateTime(2023, 1, 13): 6,
              },
              colorMode: ColorMode.opacity,
              showColorTip: false,
              // margin: EdgeInsets.all(0.9),
              // scrollable: true,
              colorsets: {
                // 1: Colors.red,
                // 3: Colors.orange,
                // 5: Colors.yellow,
                // 7: Colors.green,
                // 9: Colors.blue,
                11: Colors.indigo.shade600,
                13: Colors.purple.shade50,
              },
              onClick: (value) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
              },
            ),
          )
      ),
      )
    );
  }
}
