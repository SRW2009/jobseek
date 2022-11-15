
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';

import 'job_apply_done_controller.dart';

class JobSeekerJobApplyDonePage extends View {
  final String companyName;

  const JobSeekerJobApplyDonePage(this.companyName, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobApplyDoneState();
}

class _JobSeekerJobApplyDoneState extends ViewState<JobSeekerJobApplyDonePage, JobSeekerJobApplyDoneController> {
  _JobSeekerJobApplyDoneState()
      : super(JobSeekerJobApplyDoneController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    backgroundColor: Theme.of(context).colorScheme.primary,
    body: ControlledWidgetBuilder<JobSeekerJobApplyDoneController>(
      builder: (context, controller) => Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FittedBox(child: Icon(Icons.mail),),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Great! Your application was sent to ${widget.companyName}',
                maxLines: 2,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SecondaryElevatedButton(
              onPressed: controller.onNavigateHome,
              child: const Text('Home'),
            ),
          ],
        )
    ),
  );
}