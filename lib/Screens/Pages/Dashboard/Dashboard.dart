import 'package:flutter/material.dart';
import 'package:jiffi/Component/DashboardComponent/DateSlider.dart';
import 'package:jiffi/Component/DashboardComponent/TaskCompetionBoard.dart';
import 'package:jiffi/Component/DashboardComponent/TaskListComponent.dart';
import 'package:jiffi/Widget/CustomText.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    return 'Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
                CustomText(
                  text: "Good ${greeting()}, Anirudh",
                  fontSize: 22,
                  padding: const EdgeInsets.only(
                      top: 40, left: 20, right: 20, bottom: 5),
                ),
              TaskCompetionBoard(),
              DateSlider(),
              TaskListComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
