
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/pages/main_menu/main_menu_page.dart';

class SharedRoute extends MaterialPageRoute {
  static const String mainMenu = '/';

  SharedRoute(RouteSettings settings)
      : super(settings: settings, builder: (ctx) => _getPage(settings));

  static Widget _getPage(RouteSettings settings) {
    switch (settings.name) {
      case mainMenu:
      default: return const MainMenuPage();
    }
  }
}