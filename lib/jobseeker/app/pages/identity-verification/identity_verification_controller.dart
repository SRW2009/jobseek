
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';

class JobSeekerIdentityVerificationController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final idCardNumberController = TextEditingController();
  final idCardPhotoController = TextEditingController();
  final selfieController = TextEditingController();
  final selfieWithIdCardController = TextEditingController();

  PlatformFile? pickedIdCardPhoto;
  PlatformFile? pickedSelfiePhoto;
  PlatformFile? pickedSelfieWithIdCardPhoto;

  @override
  void initListeners() {}

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      final idCardNumber = idCardNumberController.text;
      final idCardPhoto = idCardPhotoController.text;
      final selfie = selfieController.text;
      final selfieWithIdCard = selfieWithIdCardController.text;

      Navigator.pushNamed(getContext(), JobSeekerRoute.chooseSpecializationCategory);
    } else {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in all field.')));
    }
  }

  void onCancel() {
    Navigator.pop(getContext());
  }

  void onPickIdCardPhoto() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedIdCardPhoto = result.files.first;
      idCardPhotoController.text = pickedIdCardPhoto!.name;
    }
  }

  void onPickSelfiePhoto() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedSelfiePhoto = result.files.first;
      selfieController.text = pickedSelfiePhoto!.name;
    }
  }

  void onPickSelfieWithIdCardPhoto() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedSelfieWithIdCardPhoto = result.files.first;
      selfieWithIdCardController.text = pickedSelfieWithIdCardPhoto!.name;
    }
  }
}