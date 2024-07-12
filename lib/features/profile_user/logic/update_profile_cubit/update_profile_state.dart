import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_state.freezed.dart';
@freezed
class UpdateProfileState<T> with _$UpdateProfileState<T> {
  const factory UpdateProfileState.initial() = _Initial;

  const factory UpdateProfileState.updateProfileStateLoading() = UpdateProfileStateLoading;
  const factory UpdateProfileState.updateProfileStateSuccess(T data) = UpdateProfileStateSuccess<T>;
  const factory UpdateProfileState.updateProfileStateErorr({required String error}) = UpdateProfileStateErorr;
}
