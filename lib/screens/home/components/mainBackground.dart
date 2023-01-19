import 'package:flutter/material.dart';
import 'package:payment_app/utils/dimensions.dart';

class MainBackground extends StatelessWidget {
  const MainBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Container(
          height: height(300),
          width: Dimensions.screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          )),
        ));
  }
}
