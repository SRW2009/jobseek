
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/home/home_controller.dart';
import 'package:jobseek/shared/app/widgets/notification_tile.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

class JobSeekerHomeUINotification extends StatefulWidget {
  final JobSeekerHomeController controller;

  const JobSeekerHomeUINotification(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUINotificationState();
}

class _JobSeekerUINotificationState extends State<JobSeekerHomeUINotification> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
      const PrimarySliverAppBar(
        label: 'Notifications',
        implyLeading: false,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final notification = widget.controller.notifications[index];
            return NotificationTile(
              notification,
              image: notification.detail.image,
              message: 'You have successfully applied to the ${notification.detail.companyName}.',
              notifiedAt: notification.notifiedAt,
              onSeeDetail: () => widget.controller.onNavigateJobDetail(notification.detail),
            );
          },
          childCount: widget.controller.notifications.length,
        ),
      ),
    ],
  );
}