
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/category_card.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/searchbar.dart';

import '../home_controller.dart';

class JobSeekerHomeUISearch extends StatefulWidget {
  final JobSeekerHomeController controller;

  const JobSeekerHomeUISearch(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUISearchState();
}

class _JobSeekerUISearchState extends State<JobSeekerHomeUISearch> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
      const PrimarySliverAppBar(
        label: 'Find a Job',
        implyLeading: false,
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
        sliver: SliverToBoxAdapter(
          child: SearchBar(
            onChanged: widget.controller.onSearchChanged,
            hint: 'Search',
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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