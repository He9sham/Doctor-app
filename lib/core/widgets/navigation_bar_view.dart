import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/view/home_page.dart';
import 'package:doctor/features/home/view/widgets/navigate_bar.dart';
import 'package:doctor/features/profile_user/logic/profile_user_cubit.dart';
import 'package:doctor/features/profile_user/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  
class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});
        

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: MultiBlocProvider(
        providers: [
            BlocProvider(
            create: (context) => HomeCubit(getIt())..onGetSpecialization(),
            child: const HomePage(
              // loginResponse: loginResponse as LoginResponse,
            ),
          ),
           BlocProvider(
            create: (context) => ProfileUserCubit(getIt())..getProfileUser(),
            child: const ProfileView(),
          ),
        ],
        child: const NavigateBar(),
      ),
    );
  }
}
