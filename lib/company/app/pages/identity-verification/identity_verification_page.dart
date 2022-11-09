
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

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
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}