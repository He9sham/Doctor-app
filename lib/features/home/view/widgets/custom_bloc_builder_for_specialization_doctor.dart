import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/home/view/widgets/custom_list_view_doctor_item.dart';
import 'package:doctor/features/home/view/widgets/custom_loading_data_with_shimmer.dart';
import 'package:doctor/features/home/view/widgets/doctor_speciality_listview.dart';
import 'package:doctor/features/home/view/widgets/row_show_text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocBuilderForSpecializationDoctor extends StatelessWidget {
  const CustomBlocBuilderForSpecializationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is Speciializationloading ||
            current is SpeciializationSussess ||
            current is SpeciializationError,
        builder: (context, state) {
          return state.maybeWhen(
            speciializationloading: () {
              return const SetupSpecializationloading();
            },
            speciializationsussess: (specializationsResponseModel) {
              var specializationlist =
                  specializationsResponseModel.specializationDataList;
              return SetupSpecializationSussess(
                  specializationlist: specializationlist);
            },
            speciializationerror: (errorhandler) {
              return const SizedBox.shrink();
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        });
  }
}

class SetupSpecializationSussess extends StatelessWidget {
  const SetupSpecializationSussess({
    super.key,
    required this.specializationlist,
  });

  final List<SpecializationsData?>? specializationlist;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationList: specializationlist ?? [],
          ),
          RowShowTextTitle(
            onPressed: () {
              context.pushNamed(Routes.recommendationScreen);
            },
            title: 'Recommendation Doctor',
          ),
          Expanded(
            child: CustomListViewDoctorItem(
              doctorlist: specializationlist?[0]?.doctorsList ?? [],
            ),
          ),
        ],
      ),
    );
  }
}
