import 'package:doctor/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void onGetSpecialization() async {
    emit(const HomeState.speciializationloading());

    final response = await _homeRepo.getSpecialization();

    response.when(success: (specializationResponse) {
      emit(HomeState.speciializationsussess(specializationResponse));
    }, failure: (errorHandler) {
      emit(HomeState.speciializationerror(errorHandler));
    });
  }
}
