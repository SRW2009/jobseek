
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/repositories/job_repo.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

import 'job_detail_controller.dart';

class JobSeekerJobDetailPage extends View {
  final int jobId;

  const JobSeekerJobDetailPage(this.jobId, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobDetailState();
}

class _JobSeekerJobDetailState extends ViewState<JobSeekerJobDetailPage, JobSeekerJobDetailController> {
  static const _textHeight = 1.4;

  _JobSeekerJobDetailState()
      : super(JobSeekerJobDetailController(JobSeekerJobRepository()));

  @override
  Widget get view => Scaffold(
    key: globalKey,
    backgroundColor: Theme.of(context).colorScheme.background,
    body: DataControlledSliversBuilder<JobSeekerJobDetailController, Job>(
      sliversBuilder: (context, controller, data) => [
        PrimarySliverAppBar(
          label: 'Job Information',
          actions: [
            IconButton(onPressed: controller.onSearch, icon: const Icon(Icons.search)),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          sliver: SliverToBoxAdapter(
            child: SizedBox.square(
              dimension: 150,
              child: Image.network(data.image, fit: BoxFit.fitHeight),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 24,
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              shadows: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  offset: const Offset(0, -2),
                  blurRadius: 1,
                  spreadRadius: 0.6,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  visualDensity: VisualDensity.compact,
                  minVerticalPadding: 0,
                  title: Text(
                    data.occupation,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      data.companyName,
                      style: const TextStyle(color: Colors.black, height: _textHeight),
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    'Job Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      data.description,
                      style: const TextStyle(color: Colors.black, height: _textHeight),
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    'Job Requirement',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      data.requirement,
                      style: const TextStyle(color: Colors.black, height: _textHeight),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: PrimaryElevatedButton(
                      onPressed: () => controller.onApplyJob(data),
                      child: const Text('Apply this Job'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}