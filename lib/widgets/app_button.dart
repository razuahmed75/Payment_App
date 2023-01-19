import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final double? fontSize;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Function()? onTap;

  const AppButton({
    super.key,
    this.text,
    this.textColor: Colors.white,
    this.fontSize: 20,
    required this.icon,
    this.iconColor: AppColor.mainColor,
    this.backgroundColor: Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: height(40),
              height: height(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(20)),
                color: backgroundColor,
              ),
              child: Icon(
                icon,
                size: height(30),
                color: iconColor,
              ),
            ),
            text != null
                ? Text(
                    text!,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ));
  }
}
