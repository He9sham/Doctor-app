import 'package:doctor/features/auth_features/data/models/login_request_body.dart';
import 'package:doctor/features/auth_features/data/repo/login_repo.dart';
import 'package:doctor/features/auth_features/view_models/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoadingState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(loginRequestBody);

    response.when(success: (loginRequestBody) {
      emit(LoginState.success(loginRequestBody));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
