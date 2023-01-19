import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_button.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: height(5),
      right: width(49),
      child: GestureDetector(
        onTap: () => showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            barrierColor: Colors.transparent,
            isScrollControlled: true,
            builder: (_) {
              return Container(
                height: height(590),
                child: Stack(
                  children: [
                    // bottom sheet background
                    Positioned(
                        bottom: 0,
                        child: Container(
                          color: Color(0xFFeef1f4).withOpacity(0.7),
                          width: Dimensions.screenWidth,
                          height: height(534),
                        )),

                    // menu bar items
                    Positioned(
                        right: width(49),
                        child: Container(
                          width: width(60),
                          height: height(250),
                          padding: EdgeInsets.only(
                              top: height(10), bottom: height(20)),
                          decoration: BoxDecoration(
                            color: AppColor.mainColor,
                            borderRadius: BorderRadius.circular(radius(30)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButton(
                                icon: Icons.cancel,
                                onTap: () => Navigator.pop(context),
                              ),
                              AppButton(
                                icon: Icons.add,
                                text: 'Add bill',
                                onTap: () => null,
                              ),
                              AppButton(
                                icon: Icons.history,
                                text: 'History',
                                onTap: () => null,
                              ),

                              /// SizedBox(height: 1),
                              /// instead of sized box,
                              /// I have to use padding
                            ],
                          ),
                        )),
                  ],
                ),
              );
            }),
        // menu button
        child: Container(
          height: height(60),
          width: width(60),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/lines.png')),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: Offset(0, 1),
                color: Color(0xff11324d).withOpacity(0.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
