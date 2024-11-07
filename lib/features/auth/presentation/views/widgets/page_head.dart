



import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';
import 'custom_gradient_text.dart';

class PageHead extends StatelessWidget {
  const PageHead({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomGradientText(
          text: "أولي العزم",
          style: Styles.textStyle32,
        ),
        SizedBox(height: 7),
        Text(
          "قم بتسجيل الدخول أو إنشاء حساب جدبد \nلحفظ تقدمك",
          textAlign: TextAlign.center,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
