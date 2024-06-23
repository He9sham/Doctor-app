import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/home/view/widgets/custom_list_view_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BlocBuildForDoc extends StatefulWidget {
  const BlocBuildForDoc({super.key});

  @override
  State<BlocBuildForDoc> createState() => _BlocBuildForDocState();
}

class _BlocBuildForDocState extends State<BlocBuildForDoc>
    with AutomaticKeepAliveClientMixin {
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
            return const SetupSpecializationloadingForDocList();
          },
          speciializationsussess: (specializationsResponseModel) {
            var specializationlist =
                specializationsResponseModel.specializationDataList;
            return Expanded(
              child: CustomListViewDoctorItem(
                doctorlist: specializationlist?[2]?.doctorsList ?? [],
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

class SetupSpecializationloadingForDocList extends StatelessWidget {
  const SetupSpecializationloadingForDocList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfWidth(0.9, context),
      height: sizeOfHeight(0.7, context),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      height: sizeOfHeight(0.09, context),
                      width: sizeOfWidth(0.9, context),
                      color: Colors.white,
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
