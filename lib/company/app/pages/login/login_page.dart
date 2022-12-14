
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/data/repositories/auth_repo.dart';
import 'package:jobseek/shared/app/widgets/common/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/primary_text_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/underline_text_button.dart';

import 'login_controller.dart';

class CompanyLoginPage extends View {
  const CompanyLoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyLoginState();
}

class _CompanyLoginState extends ViewState<CompanyLoginPage, CompanyLoginController> {
  _CompanyLoginState()
      : super(CompanyLoginController(CompanyAuthenticationRepository()));

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<CompanyLoginController>(
      sliversBuilder: (context, controller) => [
        SecondarySliverAppBar(
          label: 'For Companies',
          onBackPressed: controller.onNavigateBack,
          elevation: 0,
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Form(
            key: controller.formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  TextInputField(
                    hint: 'Email',
                    controller: controller.emailController,
                    required: true,
                    inputType: TextInputType.emailAddress,
                  ),
                  TextInputField(
                    hint: 'Password',
                    controller: controller.passwordController,
                    required: true,
                    obscure: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: UnderlineTextButton(
                      onPressed: null,
                      child: Text('Forget Password?'),
                    ),
                  ),
                  Center(
                    child: SecondaryElevatedButton(
                      onPressed: controller.loading ? null : controller.onLogin,
                      child: controller.loading ? const CircularProgressIndicator() : const Text('Log In'),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an Account?'),
                      PrimaryTextButton(
                        onPressed: controller.onNavigateRegister,
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}