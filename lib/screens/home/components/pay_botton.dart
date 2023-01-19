import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/payment/payment.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/my_button.dart';
import 'package:get/get.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        child: MyButton(
          onTap: () => Get.to(() => PaymentPage()),
          text: 'Pay all bills',
          size: height(30),
          textColor: Colors.white,
          backgroundColor: AppColor.mainColor,
        ));
  }
}
