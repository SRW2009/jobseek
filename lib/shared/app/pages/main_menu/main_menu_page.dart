
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/utils/resources.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';

import 'main_menu_controller.dart';

class MainMenuPage extends View {
  const MainMenuPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainMenuState();
}

class _MainMenuState extends ViewState<MainMenuPage, MainMenuController> with _Style {
  _MainMenuState()
      : super(MainMenuController());

  @override
  Widget get view => Scaffold(
    key: globalKey,
    backgroundColor: Colors.white,
    body: ControlledSliversBuilder<MainMenuController>(
      sliversBuilder: (context, controller) => [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Image.asset(SharedResources.logo)),
                Padding(
                  padding: padding.copyWith(top: 0),
                  child: Text(
                    'JobSeek',
                    style: textStyle(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: padding,
                  child: ElevatedButton(
                    style: buttonStyle(context),
                    onPressed: controller.onCompanyOption,
                    child: const Text('For Companies'),
                  ),
                ),
                Padding(
                  padding: padding.copyWith(top: 0),
                  child: ElevatedButton(
                    style: buttonStyle(context),
                    onPressed: controller.onJobSeekerOption,
                    child: const Text('For Job Seekers'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

mixin _Style {
  EdgeInsets padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16);

  ButtonStyle buttonStyle(BuildContext context) => ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondaryContainer),
    foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onSecondaryContainer),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
    minimumSize: const MaterialStatePropertyAll(Size.fromHeight(50)),
    textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 24)),
    padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
  );

  TextStyle textStyle(BuildContext context) => TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.secondaryContainer,
    letterSpacing: 1.1,
  );
}