import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/core/widgets/navigation_bar_view.dart';
import 'package:doctor/features/doc_details/view/doc_details_view.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/view/home_page.dart';
import 'package:doctor/features/home/view/welcome_page.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/login/view/sigh_in_view.dart';
import 'package:doctor/features/onboarding/view/onboarding_view.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:doctor/features/profile_user/logic/profile_user_cubit/profile_user_cubit.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_cubit.dart';
import 'package:doctor/features/profile_user/view/person_information.dart';
import 'package:doctor/features/profile_user/view/profile_view.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/doctor_speciality.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/recommend_doc_view.dart';
import 'package:doctor/features/setting/view/notification_view.dart';
import 'package:doctor/features/setting/view/security_view.dart';
import 'package:doctor/features/setting/view/setting_view.dart';
import 'package:doctor/features/sign_up/logic/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/views/sighup_view.dart';
import 'package:doctor/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.settingScreen:
        return MaterialPageRoute(
          builder: (_) => const SettingView(),
        );
      case Routes.personInformationScreen:
        final profileUserResponseData = arguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<UpdateProfileCubit>(),
            child: PersonInformation(
              profileUserResponseData:
                  profileUserResponseData as ProfileUserResponseData,
            ),
          ),
        );
      case Routes.navigationbarScreen:
        return MaterialPageRoute(
          builder: (_) => const NavigationBarView(),
        );
      case Routes.securityScreen:
        return MaterialPageRoute(
          builder: (_) => const SecurityView(),
        );
      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationView(),
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
      case Routes.homeScreen:
        // final loginResponse = arguments;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..onGetSpecialization(),
            child: const HomePage(
                // loginResponse: loginResponse as LoginResponse,
                ),
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
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..onGetSpecialization(),
            child: const DoctorSpeciality(),
          ),
        );
      case Routes.profileUserScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ProfileUserCubit(getIt())..getProfileUser(),
            child: const ProfileView(),
          ),
        );
      case Routes.docDetailsScreen:
        final docId = arguments;
        return MaterialPageRoute(
          builder: (_) => DocDetailsView(
            doctors: docId as Doctors,
          ),
        );

      default:
        return null;
    }
  }
}
