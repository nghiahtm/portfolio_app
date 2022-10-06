import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/config/color_ui.dart';
import 'package:portfolio_nghia/app/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUI.whiteCoffee,
        appBarTheme: AppBarTheme(
          color: ColorUI.redClothesArsenal
        ),
      ),
      home: const HomePage(),
    );
  }
}