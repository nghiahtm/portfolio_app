import 'package:flutter/material.dart';
import 'package:portfolio_nghia/config/color_ui.dart';
import 'package:portfolio_nghia/config/style_app.dart';

class ItemProjectWidget extends StatelessWidget {
  const ItemProjectWidget(
      {Key? key,
      required this.nameProject,
      required this.imageProject,
      this.onTap})
      : super(key: key);
  final String nameProject;
  final String imageProject;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
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
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Text(
            nameProject,
            style: StyleApp.headline4,
          )),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
