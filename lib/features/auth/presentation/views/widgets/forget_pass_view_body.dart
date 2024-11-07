import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owli_aleazm/core/utils/app_router.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'custom_back_arrow.dart';
import 'form_item.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomBackArrow(),
            const SizedBox(height: 15),
            Text(
              "نسيت كلمة المرور؟",
              style: Styles.textStyle24.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد",
              style: Styles.textStyle16,
            ),
            const SizedBox(height: 25),
            const FormItem(
              text: "البريد الالكتروني",
              keyboardType: TextInputType.emailAddress,
              hint: "ادخل بريدك الالكتروني",
            ),
            const SizedBox(height: 25),
            CustomButton(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kVerificationCodeView);
              },
              text: "ارسال",
            ),
          ],
        ),
      ),
    );
  }
}
