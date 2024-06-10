import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/view/home_page.dart';
import 'package:doctor/features/home/view/welcome_page.dart';
import 'package:doctor/features/login/view/sigh_in_view.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/onboarding/view/onboarding_view.dart';
import 'package:doctor/features/sign_up/view_models/signup_cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/views/sighup_view.dart';
import 'package:doctor/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String sighinview = '/sighinview';
  static String sighupview = '/sighupview';
  static String welcomeview = '/welcomeview';
  static String onboardingview = '/onboardingview';
  static String homepage = '/homepage';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: onboardingview,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: sighinview,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: const SighInView(),
      ),
    ),
    GoRoute(
      path: sighupview,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SignupCubit>(),
        child: const SighupView(),
      ),
    ),
    GoRoute(
      path: welcomeview,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: homepage,
      builder: (context, state) => BlocProvider(
        create: (context) => HomeCubit(getIt())..onGetSpecialization(),
        child: const HomePage(),
      ),
    ),
  ]);

   // Example of checking if the user is logged in
    bool isLoggedInUser = false;

    // Define your routes
    final _routes = [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(child: HomePage()),
      ),
      // Add other routes as needed
    ];

    // Initialize GoRouter with conditional routing
    final _router = GoRouter(
      routes: _routes,
      redirect: (state) {
        // Redirect to homepage if the user is logged in
        if (isLoggedInUser) {
          return '/'; // Adjust the path according to your homepage route
        }
        // Otherwise, handle redirection as per your app's flow
        return null;
      },
    );

}
