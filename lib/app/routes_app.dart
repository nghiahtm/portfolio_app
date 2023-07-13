import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/project/project_page.dart';
import 'package:portfolio_nghia/config/routes_constant.dart';

class RoutesApp {
  static Map<String, Widget Function(BuildContext)> routesLinkApp = {
    //RoutesConstant.projectApp: (_) => const ProjectPage()
  };

  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == RoutesConstant.projectApp) {
      // Cast the arguments to the correct
      // type: ScreenArguments.
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) {
          return ProjectPage(
            project: args['project'],
          );
        },
      );
    }
    return null;
  }
}