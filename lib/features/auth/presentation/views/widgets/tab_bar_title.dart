import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';

class TabBarTitle extends StatelessWidget {
  final bool isSignIn;
  final ValueChanged<bool> onTabChanged;

  const TabBarTitle({
    required this.isSignIn,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.kTabBarColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTabChanged(false),
              child: Container(
                decoration: BoxDecoration(
                  color: !isSignIn ? Colors.white : AppColor.kTabBarColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "تسجيل الدخول",
                    style: Styles.textStyle16.copyWith(
                      color: !isSignIn ? AppColor.kPrimaryColor : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: GestureDetector(
              onTap: () => onTabChanged(true),
              child: Container(
                decoration: BoxDecoration(
                  color: isSignIn ? Colors.white : AppColor.kTabBarColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "إنشاء حساب",
                    style: Styles.textStyle16.copyWith(
                      color: isSignIn ? AppColor.kPrimaryColor : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
