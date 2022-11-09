
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

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
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}