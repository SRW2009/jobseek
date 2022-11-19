
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/see_detail_tile.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import '../home_controller.dart';

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
            return SeeDetailTile(
              image: notification.detail.image,
              time: notification.notifiedAt,
              onSeeDetail: () => widget.controller.onNavigateJobDetail(notification.detail),
              child: Text(
                'You have successfully applied to the ${notification.detail.companyName}.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
          childCount: widget.controller.notifications.length,
        ),
      ),
    ],
  );
}