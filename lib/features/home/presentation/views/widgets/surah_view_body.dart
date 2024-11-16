import 'package:flutter/material.dart';
import '../../../data/models/surah_number.dart';
import 'custom_app_bar.dart';

class SurahViewBody extends StatelessWidget {
  const SurahViewBody({super.key, required this.surahList});

  final Surah surahList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppBar(
          title: surahList.name,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: List.generate(surahList.ayahs.length, (index) {
                  return TextSpan(
                    text:
                        '${surahList.ayahs[index].text} \uFD3F${index + 1}\uFD3E ',
                    style: const TextStyle(
                        fontSize: 20, color: Colors.black, height: 1.5),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
