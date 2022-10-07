import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/project/project_page.dart';
import 'package:portfolio_nghia/config/routes_constant.dart';

class RoutesApp {
  static Map<String, Widget Function(BuildContext)> routesLinkApp = {
    RoutesConstant.projectApp: (_) => const ProjectPage()
  };
}