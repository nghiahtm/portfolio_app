import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/style_app.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dự Án',style: StyleApp.appBarTitle),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}
