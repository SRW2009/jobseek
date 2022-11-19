
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/underline_text_button.dart';

import 'complete_profile_controller.dart';

class CompanyCompleteProfilePage extends View {
  const CompanyCompleteProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyCompleteProfileState();
}

class _CompanyCompleteProfileState extends ViewState<CompanyCompleteProfilePage, CompanyCompleteProfileController> {
  _CompanyCompleteProfileState()
      : super(CompanyCompleteProfileController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<CompanyCompleteProfileController>(
      sliversBuilder: (context, controller) => [
        const SecondarySliverAppBar(
          label: 'Complete Company Profile',
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverToBoxAdapter(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  TextInputField(
                    hint: 'Company Description',
                    controller: controller.descController,
                    required: true,
                  ),
                  TextInputField(
                    hint: 'Company Website',
                    controller: controller.webController,
                    required: true,
                  ),
                  TextInputField(
                    hint: 'Contact Person',
                    controller: controller.cpController,
                    required: true,
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