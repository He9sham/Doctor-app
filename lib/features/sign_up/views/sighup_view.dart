import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/login/view/widgets/row_text_have_acc.dart';
import 'package:doctor/features/login/view/widgets/terms_conditions_text.dart';
import 'package:doctor/features/login/view/widgets/text_auth_welcome.dart';
import 'package:doctor/features/sign_up/view_models/signup_cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/views/widgets/sign_up_bloc_listener.dart';
import 'package:doctor/features/sign_up/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SighupView extends StatelessWidget {
  const SighupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                verticalSpace(20),
                TextAuthWelcome(
                  padding: EdgeInsets.only(
                      right: MediaQuery.sizeOf(context).width * 0.36),
                  title: 'Create Account',
                  subtitle:
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                ),
                verticalSpace(36),
                const SignupForm(),
                verticalSpace(16),
                AppTextButton(
                  buttonHeight: 52,
                  buttonWidth: 330,
                  buttonText: 'Create Account',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () {
                    validateThenDoSignup(context);
                  },
                ),
                const SignUpBlocListener(),
                verticalSpace(10),
                const TermsConditionsText(),
                RowTextHaveAcc(
                  title: 'Already have an account yet?',
                  suptitle: 'Sign In',
                  onpressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
