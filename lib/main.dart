
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
        primarySwatch: Colors.orange,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFF8DA8B),
          onPrimary: Color(0xFF322C1C),
          secondary: Color(0xFFFDFDFD),
          onSecondary: Color(0xFF333333),
          error: Color(0xFFFD4848),
          onError: Color(0x00000000),
          background: Color(0xFFFFFFFF),
          onBackground: Color(0xFF000000),
          surface: Color(0xFF606060),
          onSurface: Color(0xFFFFFFFF),
        ),
      ),
      onGenerateRoute: _router.getRoute,
      navigatorObservers: [_router.routeObserver ],
      initialRoute: SharedRoute.mainMenu,
    );
  }
}