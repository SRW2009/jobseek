
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/underline_text_button.dart';

import 'identity_verification_controller.dart';

class CompanyIdentityVerificationPage extends View {
  const CompanyIdentityVerificationPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyIdentityVerificationState();
}

class _CompanyIdentityVerificationState extends ViewState<CompanyIdentityVerificationPage, CompanyIdentityVerificationController> {
  _CompanyIdentityVerificationState()
      : super(CompanyIdentityVerificationController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<CompanyIdentityVerificationController>(
      sliversBuilder: (context, controller) => [
        const SecondarySliverAppBar(
          label: 'Company Verification',
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverToBoxAdapter(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  TextInputField(
                    hint: 'Taxpayer Identification Number',
                    controller: controller.taxPayerIdentificationNumberController,
                    required: true,
                  ),
                  TextInputField.filePick(
                    hint: 'Taxpayer Identification',
                    controller: controller.taxPayerIdentificationController,
                    onPick: controller.onPickTaxPayerIdentification,
                    required: true,
                  ),
                  TextInputField.filePick(
                    hint: 'Company Portofolio',
                    controller: controller.companyPortofolioController,
                    onPick: controller.onPickCompanyPortofolio,
                    required: true,
                  ),
                  TextInputField.filePick(
                    hint: 'Deed of Incorporation',
                    controller: controller.deedOfIncorporationController,
                    onPick: controller.onPickDeedOfIncorporation,
                    required: true,
                  ),
                  TextInputField.filePick(
                    hint: 'Company Domicile Certificate',
                    controller: controller.companyDomicileCertificateController,
                    onPick: controller.onPickCompanyDomicileCertificate,
                    required: true,
                  ),
                  TextInputField.filePick(
                    hint: 'Certificate of Company Registration',
                    controller: controller.certificateOfCompanyRegistrationController,
                    onPick: controller.onPickCertificateOfCompanyRegistration,
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