



import 'package:flutter/material.dart';
import '../../data/models/surah_number.dart';
import 'widgets/surah_view_body.dart';

class SurahView extends StatelessWidget {
  const SurahView({super.key, required this.surahList});
  final Surah surahList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SurahViewBody(surahList: surahList,),
        ),
      ),
    );
  }
}
