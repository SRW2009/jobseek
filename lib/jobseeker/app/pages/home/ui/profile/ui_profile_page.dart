
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/default_tile.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/primary_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import 'ui_profile_controller.dart';

class JobSeekerHomeUIProfilePage extends View {
  const JobSeekerHomeUIProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUIProfileState();
}

class _JobSeekerUIProfileState extends ViewState<JobSeekerHomeUIProfilePage, JobSeekerHomeUIProfileController> {
  _JobSeekerUIProfileState() : super(JobSeekerHomeUIProfileController());

  @override
  Widget get view => ControlledSliversBuilder<JobSeekerHomeUIProfileController>(
    sliversBuilder: (context, controller) => [
      const PrimarySliverAppBar(
        label: 'Profile',
        implyLeading: false,
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTile(
                title: 'Abyan Athar',
                subtitle: 'Balikpapan, Kalimantan Timur',
                // TODO: fetch image from network
                image: Image.asset(Assets.logo, fit: BoxFit.fitHeight),
                imageRadius: 80,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Divider(height: 16),
              ),
            ],
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.check_circle),
                title: const Text('Identity Verification'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('My Files'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text('My Jobs'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings & Privacy'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: PrimaryOutlinedButton(
                    onPressed: () {  },
                    minWidth: 160,
                    child: const Text('Sign Out'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}