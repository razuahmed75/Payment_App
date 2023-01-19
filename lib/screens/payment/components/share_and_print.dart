import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_button.dart';

class ShareAndPrint extends StatelessWidget {
  const ShareAndPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          icon: Icons.share_sharp,
          backgroundColor: AppColor.mainColor,
          text: 'share',
          textColor: AppColor.mainColor,
          iconColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(width: width(80)),
        AppButton(
          icon: Icons.print_outlined,
          backgroundColor: AppColor.mainColor,
          text: 'print',
          textColor: AppColor.mainColor,
          iconColor: Colors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
