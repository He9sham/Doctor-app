import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/features/home/data/models/specialization_response_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.speciializationloading() = Speciializationloading;
  const factory HomeState.speciializationsussess(SpecializationsResponseModel specializationsResponseModel) = SpeciializationSussess;
  const factory HomeState.speciializationerror(ErrorHandler errorhandler) = SpeciializationError;

}
