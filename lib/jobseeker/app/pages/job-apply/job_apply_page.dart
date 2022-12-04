
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/common/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/splash_tile.dart';
import 'package:jobseek/shared/app/widgets/form_field/text_input_field.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

import 'job_apply_controller.dart';

class JobSeekerJobApplyPage extends View {
  final Job job;

  const JobSeekerJobApplyPage(this.job, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobApplyState();
}

class _JobSeekerJobApplyState extends ViewState<JobSeekerJobApplyPage, JobSeekerJobApplyController> {
  _JobSeekerJobApplyState()
      : super(JobSeekerJobApplyController());

  final ScrollController _scrollController = ScrollController();

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledWidgetBuilder<JobSeekerJobApplyController>(
      builder: (context, controller) => Form(
        key: controller.formKey,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            PrimarySliverAppBar(label: 'Apply to ${widget.job.companyName}'),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Text(
                      'Contact Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SplashTile(
                      title: 'Abyan Athar',
                      subtitle: 'Balikpapan, Kalimantan Timur',
                      // TODO: fetch image from network
                      image: Image.asset(Assets.logo, fit: BoxFit.fitHeight),
                      imageRadius: 80,
                    ),
                    TextInputField(
                      controller: controller.emailController,
                      hint: 'Email Address*',
                      required: true,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextInputField(
                      controller: controller.phoneController,
                      hint: 'Mobile Phone Number*',
                      required: true,
                      inputType: TextInputType.phone,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12, top: 24),
                      child: Text(
                        'Resume',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        'Be sure to include an updated resume*',
                      ),
                    ),
                    const Text(
                      'DOC, DOCX, PDF (5 MB)',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextInputField.filePick(
                      hint: 'Upload Resume',
                      controller: controller.resumeController,
                      onPick: controller.onPickResume,
                      required: true,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'You can control this in your application settings.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Center(
                      child: PrimaryElevatedButton(
                        onPressed: () => controller.onSubmit(widget.job.companyName),
                        child: const Text('Apply (Rp 10,000)'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}