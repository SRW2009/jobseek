
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_controller.dart';

class JobSeekerJobApplyController extends Controller {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final resumeController = TextInputController();

  PlatformFile? pickedResume;

  @override
  void initListeners() {}

  void onPickResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      pickedResume = result.files.first;
      resumeController.text = pickedResume!.name;
      resumeController.state!.didChange(pickedResume!.name);
    }
  }

  void onSubmit(String companyName) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobApplyDone, arguments: companyName);
  }
}