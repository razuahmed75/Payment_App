import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/dimensions.dart';

class BigtextContainer extends StatelessWidget {
  const BigtextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: height(80),
            left: width(40),
            child: Container(
              child: Text(
                'My Bills',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: font(50),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Positioned(
            top: height(100),
            child: Container(
              child: Text(
                'My Bills',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.1),
                  fontSize: font(70),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ],
    );
  }
}
