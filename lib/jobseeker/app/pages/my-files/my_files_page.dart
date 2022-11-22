
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/widgets/file_card.dart';
import 'package:jobseek/shared/app/widgets/common/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';

import 'my_files_controller.dart';

class JobSeekerMyFilesPage extends View {
  const JobSeekerMyFilesPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerMyFilesState();
}

class _JobSeekerMyFilesState extends ViewState<JobSeekerMyFilesPage, JobSeekerMyFilesController> {
  _JobSeekerMyFilesState()
      : super(JobSeekerMyFilesController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<JobSeekerMyFilesController>(
      sliversBuilder: (context, controller) => [
        SecondarySliverAppBar(
          label: 'My Files',
          actions: [
            IconButton(onPressed: controller.onAdd, icon: const Icon(Icons.add)),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, i) {
              final file = controller.files[i];
              return FileCard(
                title: file.title,
                fileName: file.fileName,
                onEdit: () => controller.onEdit(file),
                onDelete: () => controller.onDelete(file),
              );
            },
            childCount: controller.files.length,
          ),
        ),
      ],
    ),
  );
}