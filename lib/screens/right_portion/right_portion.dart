import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/right_portion/calendar.dart';

class RightPortion extends StatelessWidget {
  const RightPortion({super.key});

  Widget eventCard(String title, int count, String btnText) {
    return Padding(
      padding: EdgeInsets.only(left: 11, right: 11),
      child: Container(
        height: 150,
        // width: 100,
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Color(0xff3C354A),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Row(
                children: List.generate(
              count,
              (index) {
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avatar.jpeg"),
                      radius: 15,
                    ),
                    SizedBox(
                      width: 8,
                    )
                  ],
                );
              },
            )),
            Row(
              children: [
                Text(
                  "Total  |  $count  |",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    side: BorderSide(color: Color(0xffAB69EB)),
                    fixedSize: Size(200, 18),
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xffAB69EB),
                    padding: EdgeInsets.only(left: 0, right: 0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.telegram),
                    SizedBox(width:5 ,),
                    Text(
                      btnText,
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B254B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CalendarScreen(),
          eventCard("Today Birthday", 2, "Birthday Wishing"),
          eventCard("Anniversary", 3, "Anniversary Wishing"),
        ],
      ),
    );
  }
}
