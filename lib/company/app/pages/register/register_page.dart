
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/checkbox_field.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/primary_text_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';

import 'register_controller.dart';

class CompanyRegisterPage extends View {
  const CompanyRegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyRegisterState();
}

class _CompanyRegisterState extends ViewState<CompanyRegisterPage, CompanyRegisterController> {
  _CompanyRegisterState()
      : super(CompanyRegisterController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<CompanyRegisterController>(
      sliversBuilder: (context, controller) => [
        SecondarySliverAppBar(
          label: 'For Companies',
          onBackPressed: controller.onNavigateBack,
          elevationValue: 0,
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
                    hint: 'Company Name',
                    controller: controller.nameController,
                    required: true,
                    inputType: TextInputType.name,
                  ),
                  TextInputField(
                    hint: 'Email',
                    controller: controller.emailController,
                    required: true,
                    inputType: TextInputType.emailAddress,
                  ),
                  TextInputField(
                    hint: 'Number Phone',
                    controller: controller.phoneController,
                    required: true,
                    inputType: TextInputType.phone,
                  ),
                  TextInputField(
                    hint: 'City',
                    controller: controller.cityController,
                    required: true,
                    inputType: TextInputType.streetAddress,
                  ),
                  TextInputField(
                    hint: 'Company Address',
                    controller: controller.addressController,
                    required: true,
                    inputType: TextInputType.streetAddress,
                  ),
                  TextInputField(
                    hint: 'Password',
                    controller: controller.passwordController,
                    required: true,
                    obscure: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  TextInputField(
                    hint: 'Confirm Password',
                    controller: controller.cPasswordController,
                    required: true,
                    obscure: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  TextInputField(
                    hint: 'Specialization',
                    controller: controller.specializationController,
                  ),
                  CheckboxField(
                    notifier: controller.agreementNotifier,
                    validator: (b) => (b??false) ? null : 'Please agree with our terms.',
                    title: RichText(
                      text: TextSpan(
                        text: 'By tapping Sign Up, you acknowledge that you have read the ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = controller.doVibrate,
                          ),
                          const TextSpan(
                            text: ' and agree to the ',
                          ),
                          TextSpan(
                            text: 'Terms of Service',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = controller.doVibrate,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: SecondaryElevatedButton(
                        onPressed: controller.onRegister,
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an Account?'),
                      PrimaryTextButton(
                        onPressed: controller.onNavigateLogin,
                        child: const Text('Log In'),
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