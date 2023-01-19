import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/data_controller.dart';
import 'package:flutter_application_1/screens/home/components/headSection.dart';
import 'package:flutter_application_1/screens/home/components/pay_botton.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:get/get.dart';
import 'components/list_bills.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    DataController _controller = Get.find();
    return Container(
      height: Dimensions.screenHeight,
      child: Stack(
        children: [
          HeadSection(),
          Obx(() {
            if (_controller.loading == true) {
              return Center(child: CircularProgressIndicator());
            }
            return ListBills();
          }),
          PayButton(),
        ],
      ),
    );
  }
}
