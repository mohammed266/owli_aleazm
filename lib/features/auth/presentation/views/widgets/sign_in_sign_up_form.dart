import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'accept_terms_checkbox.dart';
import 'form_item.dart';
import 'tab_bar_title.dart';

class SignInSignUpForm extends StatefulWidget {
  const SignInSignUpForm({super.key});

  @override
  State<SignInSignUpForm> createState() => _SignInSignUpFormState();
}

class _SignInSignUpFormState extends State<SignInSignUpForm> {
  bool isSignIn = false;
  late bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TabBarTitle(
          isSignIn: isSignIn,
          onTabChanged: (bool newValue) {
            setState(() {
              isSignIn = newValue;
            });
          },
        ),
        const SizedBox(height: 25),
        const FormItem(
          text: "البريد الالكتروني",
          keyboardType: TextInputType.emailAddress,
          hint: "ادخل بريدك الالكتروني",
        ),
        const FormItem(
          text: "كلمة المرور",
          keyboardType: TextInputType.visiblePassword,
          hint: "ادخل كلمة المرور",
          obscureText: true,
        ),
        if (isSignIn == true)
          const FormItem(
            text: "تأكيد كلمة المرور",
            keyboardType: TextInputType.visiblePassword,
            hint: "ادخل كلمة المرور",
            obscureText: true,
          ),
        if (isSignIn == true)
          AcceptTermsCheckbox(
            isChecked: _isChecked,
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
          ),
        if (isSignIn == false) const ForgetPassText(),
        const SizedBox(height: 25),
        CustomButton(
          onTap: () {},
          text: "تسجيل الدخول",
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

class ForgetPassText extends StatelessWidget {
  const ForgetPassText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kForgetPassView);
      },
      child: Text(
        "نسيت كلمة المرور؟",
        style: Styles.textStyle14.copyWith(
          color: AppColor.kPrimaryColor,
        ),
      ),
    );
  }
}
