import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';
import '../../../../../core/widgets/custom_back_arrow.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.kGradientColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: Styles.textStyle24,
                ),
              ),
            ),
            const CustomBackArrow(),
          ],
        ),
      ),
    );
  }
}
