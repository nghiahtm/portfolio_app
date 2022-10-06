import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/config/style_app.dart';

class ItemProjectWidget extends StatelessWidget {
  const ItemProjectWidget({Key? key, required this.nameProject, required this.imageProject}) : super(key: key);
  final String nameProject;
  final String imageProject;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: ColorUI.whiteCoffee,
          child: ClipOval(
            child: Image.asset(
              imageProject,
            ),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(child: Text(nameProject,style: StyleApp.headline4,)),
        const Icon(Icons.chevron_right)
      ],
    );
  }
}
