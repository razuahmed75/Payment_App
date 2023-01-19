import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/data_controller.dart';
import 'package:flutter_application_1/screens/payment/components/success_bill_tile.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/my_button.dart';
import 'package:get/get.dart';

import 'components/share_and_print.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    DataController _controller = Get.find();
    return Container(
      height: Dimensions.screenHeight,
      width: Dimensions.screenWidth,
      padding:
          EdgeInsets.only(top: height(80), left: width(30), right: width(30)),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/paymentbackground.png'),
        fit: BoxFit.fill,
      )),
      child: Column(
        children: [
          // success photo
          _SuccessPhoto(),
          Text(
            'Success !',
            style: TextStyle(
              color: AppColor.mainColor,
              fontSize: font(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Payment is completed for ${_controller.newList.length} bills',
            style: TextStyle(
              color: AppColor.idColor,
              fontSize: font(20),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: height(30)),

          // payment history
          _PaymentHistory(),
          SizedBox(height: height(30)),

          // total amount
          _TotalAmount(),
          SizedBox(height: height(80)),

          // share and print
          ShareAndPrint(),
          SizedBox(height: height(20)),

          // done
          MyButton(
            onTap: () => Get.back(),
            text: 'Done',
            size: height(30),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Column _TotalAmount() {
    return Column(
      children: [
        Text(
          'Total Amount',
          style: TextStyle(
            color: AppColor.idColor,
            fontSize: font(20),
          ),
        ),
        SizedBox(height: height(10)),
        Text(
          '\$2840.00',
          style: TextStyle(
            color: AppColor.mainColor,
            fontSize: font(30),
          ),
        ),
      ],
    );
  }

  Container _PaymentHistory() {
    return Container(
        height: height(175),
        width: width(350),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius(10)),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 3,
            itemBuilder: (_, index) {
              return SucceedBill();
            }));
  }

  Container _SuccessPhoto() {
    return Container(
      width: double.maxFinite,
      height: height(120),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/success.png'),
        fit: BoxFit.fitWidth,
      )),
    );
  }
}
