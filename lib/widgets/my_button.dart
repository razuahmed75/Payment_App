import 'package:flutter/material.dart';
import 'package:payment_app/utils/colors.dart';
import 'package:payment_app/utils/dimensions.dart';

class MyButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final double? size;
  final Function()? onTap;
  final bool? isBorder;

  const MyButton({
    super.key,
    this.backgroundColor: AppColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBorder: false,
    required this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height(60),
        width: Dimensions.screenWidth - 60,
        margin: EdgeInsets.symmetric(horizontal: width(30)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius(10)),
          color: backgroundColor,
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: size ?? font(40),
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
