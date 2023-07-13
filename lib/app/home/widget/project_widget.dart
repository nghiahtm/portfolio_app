import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/app/home/widget/item_project_widget.dart';
import 'package:portfolio_nghia/config/routes_constant.dart';
import 'package:portfolio_nghia/model/project_model.dart';

import 'expansion_panel_item.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key, required this.projects}) : super(key: key);
  final List<ProjectModel> projects;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Dự án',
      children: List.generate(
          projects.length,
          (index) {
          final project = projects[index];
           return Column(
              children: [
                ItemProjectWidget(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesConstant.projectApp,
                          arguments: {'project': project});
                    },
                    imageProject:project.image??"",
                    nameProject: project.name??''),
                if (index != projects.length - 1)
                  Divider(
                    color: ColorUI.redClothesArsenal,
                  )
              ],
            );
          }),
    );
  }
}
