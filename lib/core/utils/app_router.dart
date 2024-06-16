import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/view/home_page.dart';
import 'package:doctor/features/home/view/welcome_page.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/login/view/sigh_in_view.dart';
import 'package:doctor/features/navigation_appbar_controlor.dart';
import 'package:doctor/features/onboarding/view/onboarding_view.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/doctor_speciality.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/recommend_doc_view.dart';
import 'package:doctor/features/sign_up/view_models/signup_cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/views/sighup_view.dart';
import 'package:doctor/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SighInView(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SighupView(),
          ),
        );
      case Routes.navigationScreen:
        return MaterialPageRoute(
          builder: (_) => const NavigationBarView(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..onGetSpecialization(),
            child: const HomePage(),
          ),
        );
      case Routes.recommendationScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..onGetSpecialization(),
            child: const RecommendDocView(),
          ),
        );
      case Routes.doctorSpecializationScreen:
        return MaterialPageRoute(
          builder: (_) => const DoctorSpeciality(),
        );
      default:
        return null;
    }
  }
}
