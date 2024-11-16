import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../manager/hadith_book_cubit/hadith_book_cubit.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../data/models/hadith_book.dart';
import 'custom_app_bar.dart';

class HadithBookViewBody extends StatelessWidget {
  const HadithBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: 'كتب الاحاديث',
        ),
        BlocBuilder<HadithBookCubit, HadithBookState>(
          builder: (context, state) {
            if (state is HadithBookSuccess) {
              final List<Book> bookList = state.book;
              return Expanded(
                child: ListView.builder(
                  itemCount: bookList.length,
                  itemBuilder: (context, index) => Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kHadithView,
                           extra: bookList[index].id,
                        );
                      },
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.kPrimaryColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      title: Text(
                        bookList[index].id,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.kPrimaryColor,
                        ),
                      ),
                      subtitle: Text(
                        bookList[index].name,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'عدد الاحاديث',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '${bookList[index].available}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else if (state is HadithBookFailure) {
              // Handle the failure state
              print('Error: ${state.errMessage}');
              return Center(child: Text('Error: ${state.errMessage}'));
            }
            return const Center(
              heightFactor: 10,
              child: CircularProgressIndicator(
                color: AppColor.kPrimaryColor,
              ),
            );
          },
        ),
      ],
    );
  }
}
