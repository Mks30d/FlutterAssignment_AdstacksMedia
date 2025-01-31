import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/right_portion/calendar.dart';

class CenterPortionThirdpart extends StatelessWidget {
  const CenterPortionThirdpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Container(
          height: 175,
          width: 800,
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black26)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 50,top: 5),
                child: Container(
                  height: 40,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Over All Performance",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "The Years",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pending",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffEA8F95)),
                              ),
                              Text(
                                "Done",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffEA8F95)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5041BC)),
                              ),
                              Text(
                                "Done",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5041BC)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //============ Graph ==============
              Expanded(
                child: Container(
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.white,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            6,
                            (index) {
                              return Text(
                                "${50 - index * 10}",
                                style: TextStyle(fontSize: 11),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.white12,
                        width: 700,
                        decoration: BoxDecoration(
                            border: Border(
                          left: BorderSide(color: Colors.black26),
                          bottom: BorderSide(color: Colors.black26),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 60),
                child: Container(
                  // color: Colors.greenAccent,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) {
                        return Text(
                          "${2015 + index}",
                          style: TextStyle(fontSize: 11),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
