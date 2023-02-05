import 'package:flutter/material.dart';
import 'package:jiffi/Component/TaskListComponent/TaskList.dart';
import 'package:jiffi/Widget/CustomText.dart';
import 'package:jiffi/Component/CalenderHeatMapComponent/CalenderHeatMap.dart';
import 'package:jiffi/Constants/constants.dart';

class Calender extends StatefulWidget {
  const Calender({Key key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: "Calender",
                fontSize: 22,
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 5),
              ),
              HeatMapCal(),
              TaskListView()
            ]
        )
      )
    );
  }
}




// class Calender extends StatelessWidget {
//   const Calender({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return HeatMapCal()
//   }
// }

