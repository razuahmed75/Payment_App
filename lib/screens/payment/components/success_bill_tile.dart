import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';

class SucceedBill extends StatelessWidget {
  const SucceedBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: height(50),
              height: height(50),
              margin: EdgeInsets.only(
                  left: width(20), top: height(15), bottom: height(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(25)),
                color: Colors.green,
              ),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: height(30),
              ),
            ),
            SizedBox(width: width(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KenGen Power',
                  style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: font(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height(10)),
                Text(
                  'ID:4759379',
                  style: TextStyle(
                    color: AppColor.idColor,
                    fontSize: font(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: width(30)),
            Container(
              margin: EdgeInsets.only(top: height(25)),
              child: Text(
                '\$1248.00',
                style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: font(16),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    );
  }
}
