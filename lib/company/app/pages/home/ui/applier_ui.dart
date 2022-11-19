
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/see_detail_tile.dart';

import '../home_controller.dart';

class CompanyHomeUIApplier extends StatefulWidget {
  final CompanyHomeController controller;

  const CompanyHomeUIApplier(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _CompanyUIApplierState();
}

class _CompanyUIApplierState extends State<CompanyHomeUIApplier> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
      const PrimarySliverAppBar(
        label: 'Worker Recommendation',
        implyLeading: false,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final applier = widget.controller.appliers[index];
            return SeeDetailTile(
              title: applier.occupation.title,
              image: applier.image,
              onSeeDetail: () => widget.controller.onNavigateApplierDetail(applier),
              child: Text(applier.name),
            );
          },
          childCount: widget.controller.appliers.length,
        ),
      ),
    ],
  );
}