import 'package:flutter/material.dart';

import 'onboarding_page_indicator.dart';
import 'onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void nextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          OnboardingPageView(
            onTap: nextPage,
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Positioned(
            bottom: 50,
            right: MediaQuery.of(context).size.width / 2.6,
            child: OnboardingPageIndicator(controller: _controller),
          ),
        ],
      ),
    );
  }
}

// class OnboardingViewBody extends StatefulWidget {
//   const OnboardingViewBody({super.key});
//
//   @override
//   State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
// }
//
// class _OnboardingViewBodyState extends State<OnboardingViewBody> {
//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController();
//     int currentPage = 0;
//
//     void nextPage() {
//       if (currentPage < 3) {
//         controller.nextPage(
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.ease,
//         );
//       }
//     } // Track the current page
//
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Stack(
//         children: [
//           PageView(
//             controller: controller,
//             onPageChanged: (index) {
//               setState(() {
//                 currentPage = index; // Update the current page index
//               });
//             },
//             children: [
//               OnboardingPage(
//                 onTap: nextPage,
//                 image: "assets/images/img_2.png",
//                 title: "مرحباً!",
//                 subTitle:
//                     "ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك.",
//               ),
//               OnboardingPage(
//                 onTap: nextPage,
//                 subTitle:
//                     "ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار.",
//                 title: "خطط مخصصة",
//                 image: "assets/images/img_1.png",
//               ),
//               OnboardingPage(
//                 onTap: nextPage,
//                 image: "assets/images/img_3.png",
//                 title: "حافظ على التحفيز",
//                 subTitle:
//                     "استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن.",
//               ),
//             ],
//           ),
//           Positioned(
//             bottom: 50,
//             right: MediaQuery.of(context).size.width / 2.6,
//             child: SmoothPageIndicator(
//               controller: controller,
//               count: 3,
//               effect: const ExpandingDotsEffect(
//                 dotHeight: 16,
//                 dotWidth: 16,
//                 dotColor: Colors.white,
//                 activeDotColor: AppColor.kPrimaryColor,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class OnboardingPage extends StatelessWidget {
//   const OnboardingPage({
//     super.key,
//     required this.onTap,
//     required this.image,
//     required this.title,
//     required this.subTitle,
//   });
//   final void Function()? onTap;
//   final String image, title, subTitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.fill,
//           image: AssetImage(image),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         child: Center(
//           child: Container(
//             width: double.infinity,
//             height: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               color: AppColor.kOnboardingContainerColor,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     title,
//                     style: Styles.textStyle32,
//                   ),
//                   Text(
//                     subTitle,
//                     style: Styles.textStyle24,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: NextButton(
//                           onTap: onTap,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 9,
//                       ),
//                       const Expanded(
//                         child: SkipButton(),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
