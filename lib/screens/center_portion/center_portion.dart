import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/center_portion/center_portion_firstpart.dart';
import 'package:flutter_assignment/screens/center_portion/center_portion_secondpart.dart';
import 'package:flutter_assignment/screens/center_portion/center_portion_thirdpart.dart';

class CenterPortion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [


        CenterPortionFirstpart(),

        CenterPortionSecondpart(),

        CenterPortionThirdpart(),
      ],
    );
  }
}
