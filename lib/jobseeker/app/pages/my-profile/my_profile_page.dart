
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/circle_image.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/not_really_text_field.dart';
import 'package:jobseek/shared/app/widgets/form_field/read_only_text_field.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/secondary_sliver_appbar.dart';
import 'package:jobseek/resources.dart';

import 'my_profile_controller.dart';

class JobSeekerMyProfilePage extends View {
  const JobSeekerMyProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerMyProfileState();
}

class _JobSeekerMyProfileState extends ViewState<JobSeekerMyProfilePage, JobSeekerMyProfileController> {
  _JobSeekerMyProfileState()
      : super(JobSeekerMyProfileController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledSliversBuilder<JobSeekerMyProfileController>(
      sliversBuilder: (context, controller) => [
        const SecondarySliverAppBar(
          label: 'My Profile',
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Center(
                    child: Stack(
                      children: [
                        CircleImage(
                          120, Image.asset(Assets.logo, fit: BoxFit.fitHeight,),
                        ),
                        Positioned(
                          right: 0, bottom: 0,
                          child: PrimaryElevatedButton.round(
                            onPressed: controller.onEditImage,
                            minWidth: 0,
                            child: const Icon(Icons.edit_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const ReadOnlyTextField(
                  label: 'Name',
                  value: 'Abyan Athar',
                ),
                const ReadOnlyTextField(
                  label: 'Email',
                  value: 'abyanathar@gmail.com',
                ),
                const ReadOnlyTextField(
                  label: 'Number Phone',
                  value: '08212322XXXX',
                ),
                const ReadOnlyTextField(
                  label: 'Name',
                  value: 'Abyan Athar',
                ),
                NotReallyTextField(
                  label: 'Education',
                  value: 'Information System (Bachelor Degree) Kalimantan Institute of Technology 2020 - 2024',
                  actions: [
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}