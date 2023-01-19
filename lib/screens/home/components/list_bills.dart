import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/data_controller.dart';
import 'package:flutter_application_1/screens/home/components/bills_card.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:get/get.dart';

class ListBills extends StatelessWidget {
  const ListBills({super.key});

  @override
  Widget build(BuildContext context) {
    DataController _controller = Get.find();
    return Positioned(
        top: height(320),
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
              itemCount: _controller.list.length,
              itemBuilder: (_, index) {
                return BillCard(index: index);
              }),
        ));
  }
}
