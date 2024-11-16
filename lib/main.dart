import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/hadith_repo/hadith_repo_impl.dart';
import 'features/home/data/repos/surah_repo/surah_repo_impl.dart';
import 'features/home/presentation/manager/hadith_book_cubit/hadith_book_cubit.dart';
import 'features/home/presentation/manager/hadith_cubit/hadith_cubit.dart';
import 'features/home/presentation/manager/surah_list_cubit/surah_list_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SurahListCubit(
            getIt.get<SurahRepoImpl>(),
          )..fetchSurahList(),
        ),
        BlocProvider(
          create: (context) => HadithBookCubit(
            getIt.get<HadithRepoImpl>(),
          )..fetchHadithBook(),
        ),
        BlocProvider(
          create: (context) => HadithCubit(
            getIt.get<HadithRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          fontFamily: GoogleFonts.montserratTextTheme.toString(),
        ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
