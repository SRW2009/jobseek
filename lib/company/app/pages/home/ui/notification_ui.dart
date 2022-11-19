
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/see_detail_tile.dart';

import '../home_controller.dart';

class CompanyHomeUINotification extends StatefulWidget {
  final CompanyHomeController controller;

  const CompanyHomeUINotification(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _CompanyUINotificationState();
}

class _CompanyUINotificationState extends State<CompanyHomeUINotification> {

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
              onSeeDetail: () => widget.controller.onNavigateApplierDetail(notification.detail),
              child: RichText(
                text: TextSpan(
                  text: '${notification.detail.name} has applied as a ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: '${notification.detail.occupation.title}.',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
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