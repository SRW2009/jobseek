
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/notification_tile.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import 'ui_notification_controller.dart';

class JobSeekerHomeUINotificationPage extends View {
  const JobSeekerHomeUINotificationPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUINotificationState();
}

class _JobSeekerUINotificationState extends ViewState<JobSeekerHomeUINotificationPage, JobSeekerHomeUINotificationController> {
  _JobSeekerUINotificationState() : super(JobSeekerHomeUINotificationController());

  @override
  Widget get view => ControlledSliversBuilder<JobSeekerHomeUINotificationController>(
    sliversBuilder: (context, controller) => [
      const PrimarySliverAppBar(
        label: 'Notifications',
        implyLeading: false,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final notification = controller.notifications[index];
            return NotificationTile(
              notification,
              image: notification.detail.image,
              message: 'You have successfully applied to the ${notification.detail.companyName}.',
              notifiedAt: notification.notifiedAt,
              onSeeDetail: () => controller.onNavigateDetail(notification.detail),
            );
          },
          childCount: controller.notifications.length,
        ),
      ),
    ],
  );
}