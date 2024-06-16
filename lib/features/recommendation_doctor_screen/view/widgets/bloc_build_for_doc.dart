import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/home/view/widgets/custom_bloc_builder_for_specialization_doctor.dart';
import 'package:doctor/features/home/view/widgets/custom_list_view_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuildForDoc extends StatefulWidget {
  const BlocBuildForDoc({super.key});

  @override
  State<BlocBuildForDoc> createState() => _BlocBuildForDocState();
}

class _BlocBuildForDocState extends State<BlocBuildForDoc> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpeciializationSussess ||
          current is SpeciializationError ||
          current is Speciializationloading,
      builder: (context, state) {
        return state.maybeWhen(
          speciializationloading: () {
            return const SetupSpecializationloading();
          },
          speciializationsussess: (specializationsResponseModel) {
            var specializationlist =
                specializationsResponseModel.specializationDataList;
            return Expanded(
              child: CustomListViewDoctorItem(
                doctorlist: specializationlist?[1]?.doctorsList ?? [],
              ),
            );
          },
          speciializationerror: (errorhandler) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
