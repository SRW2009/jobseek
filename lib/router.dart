
import 'package:flutter/material.dart';
import 'package:jobseek/company/app/route.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/route.dart';

class Router {
  final RouteObserver<PageRoute> routeObserver;

  Router() : routeObserver = RouteObserver<PageRoute>();

  Route? getRoute(RouteSettings settings) {
    if (settings.name?.split('/')[1] == 'company') {
      return CompanyRoute(settings);
    }
    else if (settings.name?.split('/')[1] == 'jobseeker') {
      return JobSeekerRoute(settings);
    }
    else {
      return SharedRoute(settings);
    }
  }
}