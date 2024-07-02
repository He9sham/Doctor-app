import 'package:doctor/core/helper/constans.dart';
import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/helper/shared_pref_helper.dart';
import 'package:doctor/core/networking/dio_factory.dart';
import 'package:doctor/core/notification_service/notifucation_assest.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/repo/login_repo.dart';
import 'package:doctor/features/login/logic/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /// save token for user function
  Future<void> saveToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.saveTokenafterLogin(token);
  }

  void emitLoginState() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
      LoginRequestBody(
          email: emailController.text, password: passwordController.text),
    );

    response.when(success: (loginResponse) async {
      await saveToken(loginResponse.userData?.token ?? "");
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }

  /// google login for user function
  Future signinwithgoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);

      // ignore: use_build_context_synchronously
      context.pushNamed(Routes.homeScreen);
      NotifucationAssest.setNotification(
          title: 'Welcome', body: 'How are you today?', id: 5);
    } on FirebaseAuthException {
      NotifucationAssest.setNotification(
          title: 'Sorry', body: 'Please tru leater!', id: 6);
    }
  }
}
