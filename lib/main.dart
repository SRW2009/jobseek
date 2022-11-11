
import 'package:flutter/material.dart';
import 'package:jobseek/router.dart' as r;
import 'package:jobseek/shared/app/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final r.Router _router;

  MyApp({super.key})
      : _router = r.Router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobSeek',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFF8DA8B),
          onPrimary: Color(0xFF322C1C),
          secondary: Color(0xFF58595B),
          onSecondary: Color(0xFFE9E9EA),
          secondaryContainer: Color(0xFF505E6C),
          onSecondaryContainer: Color(0xFFFDFDFD),
          error: Color(0xFFFD4848),
          onError: Color(0xFFFDFDFD),
          background: Color(0xFFFDFDFD),
          onBackground: Color(0xFF000000),
          surface: Color(0xFFFDFDFD),
          onSurface: Color(0xFF000000),
          tertiary: Color(0xFFF6F6F6),
          onTertiary: Color(0x9958595B),
          tertiaryContainer: Color(0xFFC5C5C5),
          shadow: Color(0x4D898989),
        ),
      ),
      onGenerateRoute: _router.getRoute,
      navigatorObservers: [_router.routeObserver ],
      initialRoute: SharedRoute.mainMenu,
    );
  }
}