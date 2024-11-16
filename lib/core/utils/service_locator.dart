



import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/hadith_repo/hadith_repo_impl.dart';
import '../../features/home/data/repos/surah_repo/surah_repo_impl.dart';
import 'api_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<SurahRepoImpl>(
    SurahRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<HadithRepoImpl>(
    HadithRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
