import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/dimensions.dart';

class CurveImageContainer extends StatelessWidget {
  const CurveImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: width(-2),
        bottom: 10,
        child: Container(
          height: height(75),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/curve.png'),
            fit: BoxFit.cover,
          )),
        ));
  }
}
