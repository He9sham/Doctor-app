import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/login/view/widgets/email_and_password.dart';
import 'package:doctor/features/login/view/widgets/login_bloc_listener.dart';
import 'package:doctor/features/login/view/widgets/row_text_have_acc.dart';
import 'package:doctor/features/login/view/widgets/terms_conditions_text.dart';
import 'package:doctor/features/login/view/widgets/text_auth_welcome.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SighInView extends StatelessWidget {
  const SighInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(20),
                TextAuthWelcome(
                  padding: EdgeInsets.only(
                      right: MediaQuery.sizeOf(context).width * 0.4),
                  title: 'Welcome Back',
                  subtitle:
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in",
                ),
                verticalSpace(36),
                const EmailAndPassword(),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: Styles.textsmail.copyWith(
                        color: const Color(0xff247CFF),
                      ),
                    ),
                  ),
                ),
                verticalSpace(16),
                AppTextButton(
                  buttonHeight: 52,
                  buttonWidth: 330,
                  buttonText: 'Login',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSpace(16),
                const TermsConditionsText(),
                verticalSpace(60),
                RowTextHaveAcc(
                  title: 'Don\'t have an account?',
                  suptitle: 'Sign up',
                  onpressed: () {
                    GoRouter.of(context).push(AppRouter.sighupview);
                  },
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
