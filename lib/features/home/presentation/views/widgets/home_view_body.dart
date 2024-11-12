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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
