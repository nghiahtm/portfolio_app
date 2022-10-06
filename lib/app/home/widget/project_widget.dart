import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/config/constants.dart';
import 'package:portfolio_nghia/app/home/widget/item_project_widget.dart';

import 'expansion_panel_item.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelItem(
      titleHeader: 'Dự án',
      children: List.generate(
          Constants.listNameProject.length,
          (index) => Column(
                children: [
                  ItemProjectWidget(
                      nameProject: Constants.listNameProject[index]),
                  if (index != Constants.listNameProject.length - 1)
                     Divider(color: ColorUI.redClothesArsenal,)
                ],
              )),
    );
  }
}
