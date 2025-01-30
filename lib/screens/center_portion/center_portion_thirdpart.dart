import 'package:flutter/material.dart';

class CenterPortionThirdpart extends StatelessWidget {
  const CenterPortionThirdpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Container(
        height: 100,
        width: 800,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
