
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/home/view/widgets/custom_bloc_builder_for_specialization_doctor.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/doctor_speciality_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuildForDocSpecialtiy extends StatelessWidget {
  const BlocBuildForDocSpecialtiy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SpeciializationSussess ||
            current is SpeciializationError ||
            current is Speciializationloading,
        builder: (context, state) {
          return state.maybeWhen(
            speciializationerror: (errorhandler) {
              return const SizedBox.shrink();
            },
            speciializationloading: () {
              return const SetupSpecializationloading();
            },
            speciializationsussess: (specializationsResponseModel) {
              var specializationlist =
                  specializationsResponseModel.specializationDataList;
              return Expanded(
                child: DoctorSpecialityGridView(
                  specializationList: specializationlist ?? [],
                ),
              );
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        });
  }
}
