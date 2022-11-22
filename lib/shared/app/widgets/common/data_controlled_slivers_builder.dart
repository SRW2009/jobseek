
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/utils/data_state_enum.dart';
import 'package:jobseek/shared/app/widgets/secondary_elevated_button.dart';

import 'data_controller.dart';

class DataControlledSliversBuilder<C extends DataController, D> extends StatelessWidget {
  final List<Widget> Function(BuildContext context, C controller, D data) sliversBuilder;

  DataControlledSliversBuilder({Key? key, required this.sliversBuilder}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<C>(
      builder: (context, controller) {
        switch (controller.dataState) {
          case DataStateEnum.none:
            return const Center(child: Text('Nothing.'));
          case DataStateEnum.loading:
            return const Center(child: CircularProgressIndicator());
          case DataStateEnum.error:
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Error loading data.', textAlign: TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: SecondaryElevatedButton(onPressed: controller.onReload, child: const Text('Reload')),
                  ),
                ],
              ),
            );
          case DataStateEnum.success:
            return CustomScrollView(
              controller: _scrollController,
              slivers: sliversBuilder(context, controller, controller.data! as D),
            );
        }
      },
    );
  }
}
