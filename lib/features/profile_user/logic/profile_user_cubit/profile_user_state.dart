 import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_state.freezed.dart';

@freezed
class ProfileUserState with _$ProfileUserState {
  const factory ProfileUserState.initial() = _Initial;

  const factory ProfileUserState.profileUserloading() = ProfileUserloading;
  const factory ProfileUserState.profileUsersussess(ProfileUserResponse profileUserResponse) = ProfileUsersussess;
  const factory ProfileUserState.profileUsererror(ErrorHandler errorhandler) = ProfileUsererror;
}
