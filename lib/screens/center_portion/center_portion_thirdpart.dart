import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/right_portion/calendar.dart';

class CenterPortionThirdpart extends StatelessWidget {
  const CenterPortionThirdpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11),
      child: Container(
        height: 175,
        width: 800,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30)
        ),
          // child: CalendarScreen(),
      ),
    );
  }
}
