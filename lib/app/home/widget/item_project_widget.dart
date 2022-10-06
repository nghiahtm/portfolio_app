import 'package:flutter/material.dart';
import 'package:portfolio_nghia/app/config/style_app.dart';

class ItemProjectWidget extends StatelessWidget {
  const ItemProjectWidget({Key? key, required this.nameProject}) : super(key: key);
  final String nameProject;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(nameProject,style: StyleApp.headline4,),
        const Icon(Icons.chevron_right)
      ],
    );
  }
}
