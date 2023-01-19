import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/data_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import 'sized_text.dart';

class BillCard extends StatefulWidget {
  final int index;
  const BillCard({super.key, required this.index});

  @override
  State<BillCard> createState() => _BillCardState();
}

class _BillCardState extends State<BillCard> {
  @override
  Widget build(BuildContext context) {
    DataController _controller = Get.find();
    print(_controller.list);
    return Container(
      height: height(130),
      margin: EdgeInsets.only(top: height(20), right: width(20)),
      width: Dimensions.screenWidth - 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.horizontal(right: Radius.circular(radius(30))),
        boxShadow: [
          BoxShadow(
            color: Color(0xffd8dbe0),
            offset: Offset(1, 1),
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: height(10), left: width(18)),
        child:
            // main row
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // first section
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // brand logo
                    Container(
                      height: height(60),
                      width: width(60),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(radius(10)),
                          image: DecorationImage(
                            image: AssetImage(
                                _controller.list[widget.index]["img"]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(width: width(10)),

                    // name and id
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _controller.list[widget.index]["brand"],
                          style: TextStyle(
                            fontSize: font(16),
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: height(10)),
                        Text(
                          'ID:846594',
                          style: TextStyle(
                            fontSize: font(16),
                            color: AppColor.idColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedText(
                  text: _controller.list[widget.index]["more"],
                  color: AppColor.green,
                ),
                SizedBox(height: height(5)),
              ],
            ),

            // second section
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller.list[widget.index]["status"] =
                              !_controller.list[widget.index]["status"];

                          print(_controller.list[widget.index]["status"]);
                          print(_controller.newList.length);
                        });
                      },
                      child: Container(
                        width: width(80),
                        height: height(30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              _controller.list[widget.index]["status"] == false
                                  ? AppColor.selectBackground
                                  : Colors.green,
                          borderRadius: BorderRadius.circular(radius(30)),
                        ),
                        child: Text(
                          'Select',
                          style: TextStyle(
                            fontSize: font(16),
                            color: _controller.list[widget.index]["status"] ==
                                    false
                                ? AppColor.selectColor
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      '\$' + _controller.list[widget.index]["due"],
                      style: TextStyle(
                        fontSize: font(18),
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Due in 3 days',
                      style: TextStyle(
                        fontSize: font(14),
                        color: AppColor.idColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: height(10)),
                  ],
                ),
                SizedBox(width: 5),
                Container(
                  width: width(5),
                  height: height(35),
                  decoration: BoxDecoration(
                      color: AppColor.halfOval,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(radius(30)))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
