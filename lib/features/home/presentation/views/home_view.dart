import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../data/repos/surah_repo/surah_repo_impl.dart';
import '../manager/surah_list_cubit/surah_list_cubit.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
