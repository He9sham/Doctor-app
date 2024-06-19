import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/recommendation_doctor_screen/view/widgets/doctor_speciality_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
              return const SetupSpecializationloadingForDocSpecialitiy();
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

class SetupSpecializationloadingForDocSpecialitiy extends StatelessWidget {
  const SetupSpecializationloadingForDocSpecialitiy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(340),
                      ),
                      height: MediaQuery.sizeOf(context).height * 0.0009,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
