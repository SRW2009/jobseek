
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/category_card.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import '../home_controller.dart';

class CompanyHomeUISearch extends StatefulWidget {
  final CompanyHomeController controller;

  const CompanyHomeUISearch(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _CompanyUISearchState();
}

class _CompanyUISearchState extends State<CompanyHomeUISearch> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
      const PrimarySliverAppBar(
        label: 'Looking for Workers',
        implyLeading: false,
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        sliver: SliverToBoxAdapter(
          child: Text(
            'Category',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final category = widget.controller.data?.specializations?[index];
              return CategoryCard(
                image: category!.image,
                title: category.title,
                onTap: () => widget.controller.onSelectCategory(category),
              );
            },
            childCount: widget.controller.data?.specializations?.length??0,
          ),
        ),
      ),
    ],
  );
}