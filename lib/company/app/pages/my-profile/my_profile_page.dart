
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/circle_image.dart';
import 'package:jobseek/shared/app/widgets/form_field/not_really_text_field.dart';
import 'package:jobseek/shared/app/widgets/form_field/read_only_text_field.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';

import 'my_profile_controller.dart';

class CompanyMyProfilePage extends View {
  const CompanyMyProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyMyProfileState();
}

class _CompanyMyProfileState extends ViewState<CompanyMyProfilePage, CompanyMyProfileController> {
  _CompanyMyProfileState()
      : super(CompanyMyProfileController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledWidgetBuilder<CompanyMyProfileController>(
      builder: (context, controller) => SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0, left: 0, right: 0,
              child: AppBar(
                backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
                foregroundColor: Theme.of(context).colorScheme.secondaryContainer,
                leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.chevron_left)),
                automaticallyImplyLeading: false,
                title: const Text('My Profile'),
                elevation: 0,
              ),
            ),
            Positioned(
              top: 40, right: 16,
              child: Stack(
                children: [
                  CircleImage(
                    100, Image.asset(Assets.logo, fit: BoxFit.fitHeight,),
                  ),
                  Positioned(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(top: 100),
              child: Column(
                children: [
                  NotReallyTextField(
                    label: 'Description',
                    value: LoremIpsum.generate(4),
                  ),
                  const ReadOnlyTextField(
                    label: 'Name',
                    value: 'Jobseek Co.',
                  ),
                  const ReadOnlyTextField(
                    label: 'Email',
                    value: 'jobseek@gmail.com',
                  ),
                  const ReadOnlyTextField(
                    label: 'Company Website',
                    value: 'jobseek.co.id',
                  ),
                  const ReadOnlyTextField(
                    label: 'Contact Person',
                    value: '08123456XXXX',
                  ),
                  NotReallyTextField(
                    label: 'Company Address',
                    value: '1600 Amphitheatre Parkway, Mountain View, California, US',
                    actions: [
                      MOutlinedButton(
                        minWidth: 75,
                        onPressed: controller.onEditAddress,
                        child: const Text('Edit'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: MOutlinedButton.error(
                          minWidth: 75,
                          onPressed: controller.onDeleteAddress,
                          child: const Text('Delete'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: PrimaryElevatedButton(
                      onPressed: controller.onEditProfile,
                      child: const Text("Edit"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}