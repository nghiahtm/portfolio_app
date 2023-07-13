import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/home/home_controller.dart';
import 'package:portfolio_nghia/app/routes_app.dart';
import 'package:portfolio_nghia/commons/di.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/app/home/home_page.dart';
import 'package:portfolio_nghia/data/project_data.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: RoutesApp.routesLinkApp,
      onGenerateRoute: RoutesApp.onGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUI.whiteCoffee,
        appBarTheme: AppBarTheme(color: ColorUI.redClothesArsenal),
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
            create: (_) =>
                HomeController(projectData: getIt<ProjectData>())..init())
      ], child: const HomePage()),
    );
  }
}
