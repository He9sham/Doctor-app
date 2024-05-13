import 'package:doctor/features/auth_features/presantation/view/sigh_in_view.dart';
import 'package:doctor/features/auth_features/presantation/view/sigh_up_view.dart';
import 'package:doctor/features/auth_features/presantation/view/welcome_page.dart';
import 'package:doctor/features/splash/presantation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String sighinview = '/sighinview';
  static String sighupview = '/sighupview';
  static String welcomeview = '/welcomeview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: sighinview,
      builder: (context, state) => const SighInView(),
    ),
    GoRoute(
      path: sighupview,
      builder: (context, state) => const SighUpView(),
    ),
    GoRoute(
      path: welcomeview,
      builder: (context, state) => const WelcomePage(),
    ),
  ]);
}
