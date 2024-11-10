import 'package:flutter/material.dart';

import 'build_muhafizons_section.dart';
import 'daily_card.dart';
import 'quran_tracking_card%20.dart';

import 'category_list.dart';
import 'easy_stepper_widget.dart';
import 'slider_container.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SliderContainer(),
          SizedBox(height: 10),
          EasyStepperWidget(),
          CategoryList(),
          QuranTrackingCard(),
          SizedBox(height: 20),
          DailyCard(),
          SizedBox(height: 20),
          BuildMuhafizonsSection(),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Text(
          //             "المُحفظون",
          //             style: Styles.textStyle20.copyWith(
          //               color: AppColor.kBlack30Color,
          //             ),
          //           ),
          //           Spacer(),
          //           Text(
          //             "عرض الكل",
          //             style: Styles.textStyle16.copyWith(
          //               color: AppColor.kPrimaryColor,
          //             ),
          //           ),
          //           Icon(
          //             Icons.arrow_forward_ios_sharp,
          //             color: AppColor.kPrimaryColor,
          //             size: 20,
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 10),
          //       SizedBox(
          //         height: 195,
          //         child: ListView.builder(
          //           scrollDirection: Axis.horizontal,
          //           itemCount: 5,
          //             itemBuilder: (context,index)=>  Card(
          //               child: Container(
          //                 width: 150,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(12),
          //                 ),
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       // height: 100,
          //                       decoration: const BoxDecoration(
          //                         color: AppColor.kPrimaryColor,
          //                         borderRadius: BorderRadius.only(
          //                           topRight: Radius.circular(12),
          //                           topLeft: Radius.circular(12),
          //                         ),
          //                         // image: DecorationImage(image: ),
          //                       ),
          //                       child: Center(
          //                         child: Image.asset(
          //                           "assets/images/mosque-sultan-ahmed.jpg",
          //                           height: 100,
          //                           width: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                       ),
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text("محمد علي",style: Styles.textStyle16.copyWith(
          //                             color: AppColor.kNameColor,
          //                           ),),
          //                           Text("مُحفظ",style: Styles.textStyle14),
          //                           Row(
          //                             children: [
          //                               Text("المراجعات",style: Styles.textStyle16.copyWith(
          //                                 color: AppColor.kName1Color,
          //                               ),),
          //                               Spacer(),
          //                               Icon(Icons.star_rounded,color: AppColor.kYellowColor,size: 18,),
          //                               Text("4.6",style: Styles.textStyle14,),
          //
          //                             ],
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
