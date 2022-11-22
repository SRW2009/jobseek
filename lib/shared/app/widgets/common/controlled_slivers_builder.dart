
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class ControlledSliversBuilder<C extends Controller> extends StatelessWidget {
  final List<Widget> Function(BuildContext context, C controller) sliversBuilder;

  ControlledSliversBuilder({Key? key, required this.sliversBuilder}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  @override
  Widget build(BuildContext context) {
    return ControlledWidgetBuilder<C>(
      builder: (context, controller) => CustomScrollView(
        controller: _scrollController,
        slivers: sliversBuilder(context, controller),
      ),
    );
  }
}
