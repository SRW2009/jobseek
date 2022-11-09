
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'main_menu_controller.dart';

class MainMenuPage extends View {
  const MainMenuPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainMenuState();
}

class _MainMenuState extends ViewState<MainMenuPage, MainMenuController> {
  _MainMenuState()
      : super(MainMenuController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}