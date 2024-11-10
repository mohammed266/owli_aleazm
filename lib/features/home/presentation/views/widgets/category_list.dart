



import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(
            onTap: (){},
            title: "قرآن",
            image: "assets/images/img_11.png",
          ),
          CategoryItem(
            onTap: (){},
            title: "حديث",
            image: "assets/images/img_10.png",
          ),
          CategoryItem(
            onTap: (){},
            title: "الصلاة",
            image: "assets/images/img_9.png",
          ),
          CategoryItem(
            onTap: (){},
            title: "التقويم",
            image: "assets/images/img_8.png",
          ),
        ],
      ),
    );
  }
}
