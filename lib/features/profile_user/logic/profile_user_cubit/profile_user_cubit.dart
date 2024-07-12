import 'package:doctor/features/profile_user/data/repo/profile_repo.dart';
import 'package:doctor/features/profile_user/logic/profile_user_cubit/profile_user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserCubit extends Cubit<ProfileUserState> {
  ProfileUserCubit(this._profileUserRepo)
      : super(const ProfileUserState.initial());

  final ProfileRepo _profileUserRepo;

  void getProfileUser() async {
    emit(const ProfileUserState.profileUserloading());
    final response = await _profileUserRepo.getProfileUser();
    response.when(
      success: (profileUserResponse) {
        emit(ProfileUserState.profileUsersussess(profileUserResponse));
      },
      failure: (errorHandler) {
        emit(ProfileUserState.profileUsererror(errorHandler));
      },
    );
  }
}
