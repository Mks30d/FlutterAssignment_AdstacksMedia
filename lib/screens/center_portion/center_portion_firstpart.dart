import 'package:flutter/material.dart';

class CenterPortionFirstpart extends StatelessWidget {
  const CenterPortionFirstpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 800,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(11),
        gradient: LinearGradient(
          colors: [Color(0xff3B1ACE), Color(0xffF7ADAC)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, top: 8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ETHEREUM 2.0",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Top Rating",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              "Project",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Trending project and high rating",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            ),
            const Text(
              "Project Created by team.",
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    side: BorderSide(color: Color(0xff261B4C)),
                    fixedSize: Size(100, 18),
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff261B4C),
                    padding: EdgeInsets.only(left: 0, right: 0)),
                child: const Text(
                  "Learn More.",
                  style: TextStyle(fontSize: 11),
                )
            )
          ],
        ),
      ),
    );
  }
}
