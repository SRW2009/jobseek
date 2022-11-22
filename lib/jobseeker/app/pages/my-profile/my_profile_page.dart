
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/repositories/applier_repo.dart';
import 'package:jobseek/shared/app/widgets/circle_image.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/not_really_text_field.dart';
import 'package:jobseek/shared/app/widgets/form_field/read_only_text_field.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';

import 'my_profile_controller.dart';

class JobSeekerMyProfilePage extends View {
  final Applier? applier;

  const JobSeekerMyProfilePage(this.applier, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerMyProfileState();
}

class _JobSeekerMyProfileState extends ViewState<JobSeekerMyProfilePage, JobSeekerMyProfileController> {
  _JobSeekerMyProfileState()
      : super(JobSeekerMyProfileController(JobSeekerApplierRepository()));

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: DataControlledSliversBuilder<JobSeekerMyProfileController, Applier>(
      sliversBuilder: (context, controller, data) => [
        SecondarySliverAppBar(
          label: (controller.editable) ? 'My Profile' : 'Worker Profile',
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Center(
                  child: Stack(
                    children: [
                      CircleImage(
                        120, Image.network(data.image, fit: BoxFit.fitHeight),
                      ),
                      if (controller.editable) Positioned(
                        right: 0, bottom: 0,
                        child: PrimaryElevatedButton.round(
                          onPressed: controller.onEditImage,
                          radius: 26,
                          child: const Icon(Icons.edit_outlined, size: 18,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ReadOnlyTextField(
                label: 'Name',
                value: data.name,
              ),
              ReadOnlyTextField(
                label: 'Email',
                value: data.email,
              ),
              ReadOnlyTextField(
                label: 'Number Phone',
                value: data.phone,
              ),
              NotReallyTextField(
                label: 'Education',
                value: data.education,
                actions: (controller.editable) ? [
                  MOutlinedButton(
                    minWidth: 75,
                    onPressed: controller.onEditEducation,
                    child: const Text('Edit'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: MOutlinedButton.error(
                      minWidth: 75,
                      onPressed: controller.onDeleteEducation,
                      child: const Text('Delete'),
                    ),
                  ),
                ] : null,
              ),
              if (!controller.editable) Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: PrimaryElevatedButton(
                  onPressed: controller.onHire,
                  child: const Text('Hire'),
                ),
              ),
            ]),
          ),
        ),
      ],
    ),
  );
}