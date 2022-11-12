
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/category_card.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/searchbar.dart';

import 'ui_search_controller.dart';

class JobSeekerHomeUISearchPage extends View {
  const JobSeekerHomeUISearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUISearchState();
}

class _JobSeekerUISearchState extends ViewState<JobSeekerHomeUISearchPage, JobSeekerHomeUISearchController> {
  _JobSeekerUISearchState() : super(JobSeekerHomeUISearchController());

  @override
  Widget get view => ControlledSliversBuilder<JobSeekerHomeUISearchController>(
    sliversBuilder: (context, controller) => [
      const PrimarySliverAppBar(
        label: 'Find a Job',
        implyLeading: false,
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
        sliver: SliverToBoxAdapter(
          child: SearchBar(
            onChanged: controller.onSearchChanged,
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
            (context, index) => CategoryCard(
              controller.categories[index],
              onTap: () => controller.onSelectCategory(controller.categories[index]),
            ),
            childCount: controller.categories.length,
          ),
        ),
      ),
    ],
  );
}