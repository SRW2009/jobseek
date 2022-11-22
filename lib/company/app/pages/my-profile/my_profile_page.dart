
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/data/repositories/user_repo.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/circle_image.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/form_field/not_really_text_field.dart';
import 'package:jobseek/shared/app/widgets/form_field/read_only_text_field.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/domain/entities/company.dart';

import 'my_profile_controller.dart';

class CompanyMyProfilePage extends View {
  const CompanyMyProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyMyProfileState();
}

class _CompanyMyProfileState extends ViewState<CompanyMyProfilePage, CompanyMyProfileController> {
  _CompanyMyProfileState()
      : super(CompanyMyProfileController(CompanyRepository()));

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: DataControlledSliversBuilder<CompanyMyProfileController, Company>(
      sliversBuilder: (context, controller, data) => [
        SliverToBoxAdapter(
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
                      100, Image.network(data.photoUrl??'', fit: BoxFit.fitHeight,),
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
                    ReadOnlyTextField(
                      label: 'Name',
                      value: data.name,
                    ),
                    ReadOnlyTextField(
                      label: 'Email',
                      value: data.email,
                    ),
                    ReadOnlyTextField(
                      label: 'Company Website',
                      value: data.companyWebsite??'',
                    ),
                    ReadOnlyTextField(
                      label: 'Contact Person',
                      value: data.phone,
                    ),
                    NotReallyTextField(
                      label: 'Company Address',
                      value: data.address,
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
      ],
    ),
  );
}