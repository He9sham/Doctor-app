import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/view/widgets/custom_appbar.dart';
import 'package:doctor/features/home/view/widgets/custom_bloc_builder_for_specialization_doctor.dart';
import 'package:doctor/features/home/view/widgets/custom_stack_find_nearby.dart';
import 'package:doctor/features/home/view/widgets/row_show_text_title.dart';
import 'package:doctor/features/login/data/models/login_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.loginResponse});
    final LoginResponse loginResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => refreshData(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  children: [
                    verticalSpace(15),
                     CustomAppbar(
                      loginResponse: loginResponse,
                    ),
                    const CustomStackFindNearby(),
                    verticalSpace(11),
                    RowShowTextTitle(
                      onPressed: () {
                        context.pushNamed(Routes.doctorSpecializationScreen);
                      },
                      title: 'Doctor Speciality',
                    ),
                    verticalSpace(9),
                    const CustomBlocBuilderForSpecializationDoctor(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> refreshData(BuildContext context) async {
    context.read<HomeCubit>().onGetSpecialization();
    await Future.delayed(const Duration(seconds: 2));
  }
}
