import 'package:flutter/material.dart';
import 'package:payment_app/screens/home/components/button_container.dart';
import 'package:payment_app/utils/dimensions.dart';

import 'curve_image_container.dart';
import 'mainBackground.dart';
import 'text_container.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(310),
      child: Stack(
        children: [
          MainBackground(),
          CurveImageContainer(),
          ButtonContainer(),
          BigtextContainer(),
        ],
      ),
    );
  }
}
