import 'package:flutter/material.dart';


import 'page_head.dart';
import 'sign_in_sign_up_form.dart';
import 'social_media_login.dart';

class SignInSignUpViewBody extends StatelessWidget {
  const SignInSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45),
            PageHead(),
            SizedBox(height: 15),
            SignInSignUpForm(),
            SocialMediaLogin(),
          ],
        ),
      ),
    );
  }
}

// class TabBarTitle extends StatefulWidget {
//   const TabBarTitle( {required this.isSignIn,super.key});
//     final bool isSignIn;
//   @override
//   State<TabBarTitle> createState() => _TabBarTitleState();
// }
//
// class _TabBarTitleState extends State<TabBarTitle> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     widget.isSignIn = false;
//     return  Container(
//       width: double.infinity,
//       height: 45,
//       padding: const EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: AppColor.kTabBarColor,
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   widget.isSignIn = false;
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: widget.isSignIn == false
//                       ? Colors.white
//                       : AppColor.kTabBarColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "تسجيل الدخول",
//                     style: Styles.textStyle16.copyWith(
//                       color: widget.isSignIn == false
//                           ? AppColor.kPrimaryColor
//                           : Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5),
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   widget.isSignIn = true;
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: widget.isSignIn == false
//                       ? AppColor.kTabBarColor
//                       : Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "إنشاء حساب",
//                     style: Styles.textStyle16.copyWith(
//                       color: widget.isSignIn == false
//                           ? Colors.black
//                           : AppColor.kPrimaryColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
