
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/home/home_controller.dart';
import 'package:jobseek/shared/app/widgets/default_tile.dart';
import 'package:jobseek/shared/app/widgets/m_outlined_button.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/resources.dart';

class JobSeekerHomeUIProfile extends StatefulWidget {
  final JobSeekerHomeController controller;

  const JobSeekerHomeUIProfile(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUIProfileState();
}

class _JobSeekerUIProfileState extends State<JobSeekerHomeUIProfile> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
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
                onTap: widget.controller.onNavigateMyProfile,
              ),
              ListTile(
                leading: const Icon(Icons.check_circle),
                title: const Text('Identity Verification'),
                onTap: widget.controller.onNavigateIdentityVerification,
              ),
              ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('My Files'),
                onTap: widget.controller.onNavigateMyFiles,
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
                  child: MOutlinedButton(
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