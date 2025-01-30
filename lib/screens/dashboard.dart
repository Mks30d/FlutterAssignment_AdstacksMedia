import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/center_portion.dart';
import 'package:flutter_assignment/screens/menu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // menu
          Container(
            color: Colors.blue,
            width: 220,
            height: double.infinity,
            child: Menu(),
          ),

          Expanded(
            child: Container(
              color: Colors.orange,
              // width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    color: Colors.deepPurple,
                    width: double.infinity,
                    height: 50,
                    child: Text("Menu"),
                  ),

                  Expanded(
                    child: Container(
                      color: Colors.red,
                      width: double.infinity,
                      // height: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.grey,
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
