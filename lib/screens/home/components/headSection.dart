import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/components/button_container.dart';
import 'package:flutter_application_1/utils/dimensions.dart';

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
