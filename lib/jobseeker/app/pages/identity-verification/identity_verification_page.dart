
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/underline_text_button.dart';

import 'identity_verification_controller.dart';

class JobSeekerIdentityVerificationPage extends View {
  const JobSeekerIdentityVerificationPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerIdentityVerificationState();
}

class _JobSeekerIdentityVerificationState extends ViewState<JobSeekerIdentityVerificationPage, JobSeekerIdentityVerificationController> {
  _JobSeekerIdentityVerificationState()
      : super(JobSeekerIdentityVerificationController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<JobSeekerIdentityVerificationController>(
      sliversBuilder: (context, controller) => [
        const SecondarySliverAppBar(
          label: 'Identity Verification',
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverToBoxAdapter(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  TextInputField(
                    hint: 'ID Card Number',
                    controller: controller.idCardNumberController,
                    required: true,
                  ),
                  TextInputField(
                    hint: 'ID Card Photo',
                    controller: controller.idCardPhotoController,
                    required: true,
                    readOnly: true,
                    suffixIcon: GestureDetector(
                      onTap: controller.onPickIdCardPhoto,
                      child: const Icon(Icons.upload),
                    ),
                  ),
                  TextInputField(
                    hint: 'Your Selfies',
                    controller: controller.selfieController,
                    required: true,
                    readOnly: true,
                    suffixIcon: GestureDetector(
                      onTap: controller.onPickSelfiePhoto,
                      child: const Icon(Icons.upload),
                    ),
                  ),
                  TextInputField(
                    hint: 'Your Selfies with ID Card',
                    controller: controller.selfieWithIdCardController,
                    required: true,
                    readOnly: true,
                    suffixIcon: GestureDetector(
                      onTap: controller.onPickSelfieWithIdCardPhoto,
                      child: const Icon(Icons.upload),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SecondaryElevatedButton(
                      onPressed: controller.onSubmit,
                      child: const Text('Submit'),
                    ),
                  ),
                  UnderlineTextButton(
                    onPressed: controller.onCancel,
                    child: const Text('Not Now'),
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