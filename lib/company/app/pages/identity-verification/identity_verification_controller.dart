
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/app/route.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_controller.dart';

class CompanyIdentityVerificationController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final taxPayerIdentificationNumberController = TextEditingController();
  final taxPayerIdentificationController = TextInputController();
  final companyPortofolioController = TextInputController();
  final deedOfIncorporationController = TextInputController();
  final companyDomicileCertificateController = TextInputController();
  final certificateOfCompanyRegistrationController = TextInputController();

  PlatformFile? pickedTaxPayerIdentification;
  PlatformFile? pickedCompanyPortofolio;
  PlatformFile? pickedDeedOfIncorporation;
  PlatformFile? pickedCompanyDomicileCertificate;
  PlatformFile? pickedCertificateOfCompanyRegistration;

  @override
  void initListeners() {}

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      final taxPayerIdentificationNumber = taxPayerIdentificationNumberController.text;
      final taxPayerIdentification = taxPayerIdentificationController.text;
      final companyPortofolio = companyPortofolioController.text;
      final deedOfIncorporation = deedOfIncorporationController.text;
      final companyDomicileCertificate = companyDomicileCertificateController.text;
      final certificateOfCompanyRegistration = certificateOfCompanyRegistrationController.text;

      Navigator.pushNamed(getContext(), CompanyRoute.chooseSpecialization);
    } else {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in all field.')));
    }
  }

  void onCancel() {
    Navigator.pop(getContext());
  }

  void onPickTaxPayerIdentification() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedTaxPayerIdentification = result.files.first;
      taxPayerIdentificationController.text = pickedTaxPayerIdentification!.name;
      taxPayerIdentificationController.state!.didChange(pickedTaxPayerIdentification!.name);
    }
  }

  void onPickCompanyPortofolio() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedCompanyPortofolio = result.files.first;
      companyPortofolioController.text = pickedCompanyPortofolio!.name;
      companyPortofolioController.state!.didChange(pickedCompanyPortofolio!.name);
    }
  }

  void onPickDeedOfIncorporation() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedDeedOfIncorporation = result.files.first;
      deedOfIncorporationController.text = pickedDeedOfIncorporation!.name;
      deedOfIncorporationController.state!.didChange(pickedDeedOfIncorporation!.name);
    }
  }

  void onPickCompanyDomicileCertificate() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedCompanyDomicileCertificate = result.files.first;
      companyDomicileCertificateController.text = pickedCompanyDomicileCertificate!.name;
      companyDomicileCertificateController.state!.didChange(pickedCompanyDomicileCertificate!.name);
    }
  }

  void onPickCertificateOfCompanyRegistration() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedCertificateOfCompanyRegistration = result.files.first;
      certificateOfCompanyRegistrationController.text = pickedCertificateOfCompanyRegistration!.name;
      certificateOfCompanyRegistrationController.state!.didChange(pickedCertificateOfCompanyRegistration!.name);
    }
  }
}