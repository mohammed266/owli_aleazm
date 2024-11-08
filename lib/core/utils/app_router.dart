import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/forget_pass_view.dart';
import '../../features/auth/presentation/views/sign_in_sign_up_view.dart';
import '../../features/auth/presentation/views/verification_code_view.dart';
import '../../features/home/presentation/views/my_home_view.dart';
import '../../features/splash/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  // SignInSignUpView; VerificationCodeView
  static const kOnboardingView = '/OnboardingView';
  static const kSignInSignUpView = '/SignInSignUpView';
  static const kForgetPassView = '/ForgetPassView';
  static const kVerificationCodeView = '/VerificationCodeView';
  static const kMyHomeView = '/MyHomeView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingView();
        },
      ),

      GoRoute(
        path: kSignInSignUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInSignUpView();
        },
      ),
      GoRoute(
        path: kForgetPassView,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPassView();
        },
      ),
      GoRoute(
        path: kVerificationCodeView,
        builder: (BuildContext context, GoRouterState state) {
          return const VerificationCodeView();
        },
      ),
      GoRoute(
        path: kMyHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomeView();
        },
      ),
      // GoRoute(
      //   path: '/BookDetailsView',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return BlocProvider(
      //       create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
      //       child: BookDetailsView(
      //         bookModel: state.extra as Items,
      //       ),
      //     );
      //   },
      // ),

      // ),
    ],
  );
}
