import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/center_portion/center_portion.dart';
import 'package:flutter_assignment/screens/menu.dart';
import 'package:flutter_assignment/screens/navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // menu
          Container(
            width: 220,
            height: double.infinity,
            child: Menu(),
          ),

          Expanded(
            child: Container(
              color: Color(0xffF1F1EF),
              // width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: DashboardNavbar(),
                  ),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      // height: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0xffF1F1EF),
                              height: double.infinity,
                              child: CenterPortion()
                            ),
                          ),

                          Container(
                            color: Colors.pink,
                            width: 220,
                            height: double.infinity,
                            child: Text("Menu"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
