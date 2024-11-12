import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';
import 'circular_slider.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
          image: const AssetImage(
            "assets/images/mosque-sultan-ahmed.jpg",
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FaIcon(
              FontAwesomeIcons.solidBell,
              color: AppColor.kGradientColor,
              size: 30,
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularSlider(),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      "الثلاثاء , 13 مارس",
                      style: Styles.textStyle16.copyWith(
                        color: AppColor.kWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "3 رمضان | 1445 هجري",
                      style: Styles.textStyle16.copyWith(
                        color: AppColor.kWhiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              "الزقازيق , السلام",
              style: Styles.textStyle16.copyWith(
                color: AppColor.kWhiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}