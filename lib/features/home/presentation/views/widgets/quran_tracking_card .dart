
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styels.dart';

class QuranTrackingCard extends StatelessWidget {
  const QuranTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: const AssetImage("assets/images/mosque-sultan-ahmed.jpg"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              QuranTrackingText(),
              Spacer(),
              QuranTrackingImage(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuranTrackingText extends StatelessWidget {
  const QuranTrackingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "متابعة القرآن من حيث توقفت",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SurahAndPageRow(),
        const PageRow(),
        const FollowButton(),
      ],
    );
  }
}

class SurahAndPageRow extends StatelessWidget {
  const SurahAndPageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "توقفت عند سورة",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          " النساء",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kGradientColor,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class PageRow extends StatelessWidget {
  const PageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "صفحة",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          " 79",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kGradientColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Text(
        'متابعة الحفظ',
        style: Styles.textStyle16.copyWith(
          color: AppColor.kWhiteColor,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColor.kPrimaryColor),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )),
      ),
    );
  }
}

class QuranTrackingImage extends StatelessWidget {
  const QuranTrackingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      width: 99,
      fit: BoxFit.fill,
      image: AssetImage("assets/images/img_12.png"),
    );
  }
}
