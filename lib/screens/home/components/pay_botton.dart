import 'package:flutter/material.dart';
import 'package:payment_app/screens/payment/payment.dart';
import 'package:payment_app/utils/colors.dart';
import 'package:payment_app/utils/dimensions.dart';
import 'package:payment_app/widgets/my_button.dart';
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
