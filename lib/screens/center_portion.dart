import 'package:flutter/material.dart';

class CenterPortion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 280,width: 1400,
          decoration: BoxDecoration(
          color: Colors.blue,
            borderRadius: BorderRadius.circular(30)
          ),
        ),
        Container(
          height: 330,width: 1400,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 650,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              Container(
                width: 650,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Container(
            height: 330,width: 1400,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),

      ],
    );
  }
}
